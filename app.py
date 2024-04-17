import os
from model import result
from bottle import route, request, static_file, run, error, template

@route('/')
def root():
    return template('start.tpl') # static_file('start.html', root='.')

@error(404)
def error404(error):
    return 'Nothing here, sorry...'

@route('/upload', method='POST')
def do_upload():
    param1 = request.forms.get('param1')
    param2 = request.forms.get('param2')
    upload = request.files.get('upload')
    name, ext = os.path.splitext(upload.filename)
    if ext not in ('.csv', '.xlsx'):
        return 'File extension not allowed. <br> <a href="/">Back to start</a>'
    save_path = "/tmp"
    if not os.path.exists(save_path):
        os.makedirs(save_path)
    file_path = "{path}/{file}".format(path=save_path, file=upload.filename)
    try:
        upload.save(file_path)
    except Exception as err:
        msg = err 
    return template('result.tpl',param1 = param1, param2=param2, results = result(param1,param2,file_path))

if __name__ == '__main__':
    run(host='localhost', port=8080,reloader=True)