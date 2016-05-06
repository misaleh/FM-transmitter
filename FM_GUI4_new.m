function varargout = FM_GUI4(varargin)
% FM_GUI4 MATLAB code for FM_GUI4.fig
%      FM_GUI4, by itself, creates a new FM_GUI4 or raises the existing
%      singleton*.
%
%      H = FM_GUI4 returns the handle to a new FM_GUI4 or the handle to
%      the existing singleton*.
%
%      FM_GUI4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FM_GUI4.M with the given input arguments.
%
%      FM_GUI4('Property','Value',...) creates a new FM_GUI4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FM_GUI4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FM_GUI4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FM_GUI4

% Last Modified by GUIDE v2.5 06-May-2016 23:19:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FM_GUI4_OpeningFcn, ...
                   'gui_OutputFcn',  @FM_GUI4_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before FM_GUI4 is made visible.
function FM_GUI4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FM_GUI4 (see VARARGIN)

% Choose default command line output for FM_GUI4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FM_GUI4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);





% --- Outputs from this function are returned to the command line.
function varargout = FM_GUI4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
fm = str2double(get(handles.edit1,'String'));

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc = str2double(get(handles.edit2,'String'));
% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
Signal_type = 1;

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Signal_type = 0;
% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
state = 0;



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
state = 0;
handles.stop_now = 1;
guidata(hObject, handles); % Update handles structure


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% handles    structure with handles and user data (see GUIDATA)
state = 0;
handles.stop_now = 1;
guidata(hObject, handles); % Update handles structure


% --- Executes on button press in togglebutton2.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%edit4
% Hint: get(hObject,'Value') returns toggle state of togglebutton2
%{
contents = cellstr(get(handles.listbox1,'String'));
signal_type = contents{get(handles.listbox1,'Value')};
k =0; %used for drawing
tp = [0:0.001:1000]; %time 
fm = str2double(get(handles.edit1,'String'));
fc = str2double(get(handles.edit2,'String'));
B = str2double(get(handles.edit3,'String')); %modulation index
message = cos(2*pi*fm*tp); %the message
carrier = cos(2*pi*fc*tp); %the carrier
FM = cos(2*pi*fc*tp+B.*sin(2*pi*fm*tp)); %the transmitted message
delay = 0.001;
%}

%% Parameters
fm = str2double(get(handles.edit1,'String'));
fc = str2double(get(handles.edit2,'String'));
B = str2double(get(handles.edit3,'String')); %modulation index
contents = cellstr(get(handles.listbox1,'String'));
signal_type = contents{get(handles.listbox1,'Value')}
syms ti; %time symblol
if(strcmp(signal_type,'Cos Wave'))
   M = cos(2*pi*fm*ti); %generic message
elseif(strcmp(signal_type,'Sin wave'))
   M = sin(2*pi*fm*ti); %generic message
end
k =0; %used for drawing
tp = 0:0.001:500; %time 
delay = 0.1; %delay when plotting
carrier = cos(2*pi*fc*tp); %the carrier
%% Message

M = cos(2*pi*fm*ti); %generic message
Mi = int(M,ti); % integrated message
ti = tp; % to substitute
Mii = eval(Mi); %substitute
M = eval(M);% message but as array to plot
FM =  cos(2*pi*fc*tp+B.*Mii); % the Fm transmitted message

%% Plotting
myfigure1 = figure('name','FM transmitter');
while (1)
    drawnow;
if ~ishghandle(myfigure1)
      break
end
figure(myfigure1);
subplot(3,1,1)
plot(tp,M)
title('Original Signal')
xlabel('time')
ylabel('Amplitude')
xlim([0+k 10+k])
figure(myfigure1);
subplot(3,1,2)
plot(tp,carrier)
xlim([0+k 10+k])
title('Carrier')
xlabel('time')
ylabel('Amplitude')
figure(myfigure1);
subplot(3,1,3)
plot(tp,FM)
xlim([0+k 10+k])
xlabel('time')
ylabel('Amplitude')
title('FM transmitted signal')
k = k+1.33;
pause(delay) %delay
drawnow();
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.

% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
