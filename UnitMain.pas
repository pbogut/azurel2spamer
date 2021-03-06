unit UnitMain;

interface

uses
  Windows, ShellApi, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Cheater, ExtCtrls, ComCtrls, jpeg, ScktComp, Menus,
  Mask;

type
  TfrmMain = class(TForm)
    Cheater: TCheater;
    tmrSpam: TTimer;
    PageControl: TPageControl;
    tabSpam: TTabSheet;
    lblMaxMP: TLabel;
    lblMaxHP: TLabel;
    lblMaxCP: TLabel;
    lblMojeCP: TLabel;
    lblMojeHP: TLabel;
    lblMojeMP: TLabel;
    lblMP: TLabel;
    lblHP: TLabel;
    lblCP: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    tabWczytaj: TTabSheet;
    edtMaxCP: TEdit;
    Label1: TLabel;
    btnWczytaj: TButton;
    tmrOdswierz: TTimer;
    tbCP: TTrackBar;
    btnStartStop: TButton;
    lblSpamCP: TLabel;
    Label2: TLabel;
    cmbF1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    cmbF2: TComboBox;
    tabAFK: TTabSheet;
    tmrAFK: TTimer;
    memAFK: TMemo;
    btnAFKStartStop: TButton;
    btnDodaj: TButton;
    cmbAFK: TComboBox;
    edtSekundy: TEdit;
    Label5: TLabel;
    tbHP: TTrackBar;
    cmbF3: TComboBox;
    Label6: TLabel;
    lblSpamHP: TLabel;
    tabRemote: TTabSheet;
    rbSerwer: TRadioButton;
    rbKlient: TRadioButton;
    ServerSocket: TServerSocket;
    ClientSocket: TClientSocket;
    btnRemoteStartStop: TButton;
    edtIP: TEdit;
    tabAbaut: TTabSheet;
    Label7: TLabel;
    Image: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    tabOpcje: TTabSheet;
    cbSzklankaMode: TCheckBox;
    Label13: TLabel;
    colOSD: TColorBox;
    Label14: TLabel;
    Label15: TLabel;
    colNormalHP: TColorBox;
    colLowHP: TColorBox;
    Label27: TLabel;
    edtDelay: TEdit;
    tmrDelay: TTimer;
    memLog: TMemo;
    cmbRemote: TComboBox;
    btnWyslij: TButton;
    btnWczytajVista: TButton;
    PageSkille: TPageControl;
    tabF: TTabSheet;
    imgF1: TImage;
    imgF2: TImage;
    imgF3: TImage;
    imgF4: TImage;
    imgF5: TImage;
    imgF6: TImage;
    imgF7: TImage;
    imgF8: TImage;
    imgF9: TImage;
    imgF10: TImage;
    imgF11: TImage;
    imgF12: TImage;
    tabAkcje: TTabSheet;
    imgAttack: TImage;
    imgAssist: TImage;
    imgInvite: TImage;
    imgDismiss: TImage;
    imgLeave: TImage;
    imgChangePartyLeader: TImage;
    imgRun: TImage;
    imgSit: TImage;
    imgNextTarget: TImage;
    imgPickUp: TImage;
    edtNick: TEdit;
    SWS: TTabSheet;
    imgChampion: TImage;
    imgRenewal: TImage;
    imgMeditation: TImage;
    imgEarth: TImage;
    imgHunter: TImage;
    imgWarding: TImage;
    imgVitality: TImage;
    imgWind: TImage;
    imgInvocation: TImage;
    imgStorm: TImage;
    imgFlame: TImage;
    BD: TTabSheet;
    imgFire: TImage;
    imgFury: TImage;
    imgWarrior: TImage;
    imgVampire: TImage;
    imgInspiration: TImage;
    imgMedusa: TImage;
    imgConcentration: TImage;
    imgMystic: TImage;
    imgSiren: TImage;
    imgShadow: TImage;
    WC: TTabSheet;
    imgCFlame: TImage;
    imgEagle: TImage;
    imgBattle: TImage;
    imgCVampire: TImage;
    imgShielding: TImage;
    imgRage: TImage;
    imgCFury: TImage;
    imgCFire: TImage;
    imgWar: TImage;
    imgCEarth: TImage;
    imgEvasion: TImage;
    imgVictory: TImage;
    imgPredator: TImage;
    imgSpirit: TImage;
    PP: TTabSheet;
    imgAcumen: TImage;
    imgGuidance: TImage;
    imgMight: TImage;
    imgHaste: TImage;
    imgFocus: TImage;
    imgDeathWhisper: TImage;
    imgShield: TImage;
    imgMagicDef: TImage;
    imgGMight: TImage;
    imgGShield: TImage;
    imgBTB: TImage;
    imgBTS: TImage;
    imgZerk: TImage;
    imgMental: TImage;
    imgPPConcentration: TImage;
    imgBlessShield: TImage;
    imgElementalProtection: TImage;
    imgHolyRes: TImage;
    imgUnholyRes: TImage;
    imgPof: TImage;
    EE: TTabSheet;
    SE: TTabSheet;
    cmbKlasa: TComboBox;
    edtDelayMacro: TEdit;
    btnDelay: TButton;
    tbHP2: TTrackBar;
    lblSpamHP2: TLabel;
    tmrDelay2: TTimer;
    cmbF4: TComboBox;
    edtDelay2: TEdit;
    tbCP2: TTrackBar;
    lblSpamCP2: TLabel;
    cmbF5: TComboBox;
    edtDelayCP: TEdit;
    tmrDelayCP: TTimer;
    Label12: TLabel;
    Label17: TLabel;
    sbTrans: TScrollBar;
    cbAlphaBlend: TCheckBox;
    lblTrans: TLabel;
    sbInterwalAFK: TScrollBar;
    sbInterwalCP: TScrollBar;
    lblIntAFK: TLabel;
    lblIntCP: TLabel;
    btnMenu: TButton;
    menZapiszWczytaj: TPopupMenu;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Wczyttaj1: TMenuItem;
    Zapisz1: TMenuItem;
    lblRemHPMP: TLabel;
    tmrRemoteHPMP: TTimer;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    imgEmpower: TImage;
    imgWM: TImage;
    imgSEFocus: TImage;
    imgSEDW: TImage;
    imgSEVampiric: TImage;
    imgPOWind: TImage;
    imgSERecharge: TImage;
    Label21: TLabel;
    lblWykonuje: TLabel;
    Label23: TLabel;
    lblCzas: TLabel;
    btnSekUP: TButton;
    btnSekDown: TButton;
    TabSheet1: TTabSheet;
    edtSciezka: TEdit;
    sbWallHackDelay: TScrollBar;
    lblWallHackDelay: TLabel;
    lblopoznienie: TLabel;
    btnWallHackRun: TButton;
    Label22: TLabel;
    Button1: TButton;
    OpenDialog: TOpenDialog;
    btnFullZestaw: TButton;
    Button2: TButton;
    btnSave: TButton;
    Label24: TLabel;
    edtMaxHP: TEdit;
    edtMaxMP: TEdit;
    btnSearch: TButton;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    btnZlapOkno: TButton;
    procedure tmrSpamTimer(Sender: TObject);
    procedure btnWczytajClick(Sender: TObject);
    procedure tmrOdswierzTimer(Sender: TObject);
    procedure tbCPChange(Sender: TObject);
    procedure btnStartStopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrAFKTimer(Sender: TObject);
    procedure btnAFKStartStopClick(Sender: TObject);
    procedure btnDodajClick(Sender: TObject);
    procedure tbHPChange(Sender: TObject);
    procedure btnWyslijClick(Sender: TObject);
    procedure rbSerwerClick(Sender: TObject);
    procedure rbKlientClick(Sender: TObject);
    procedure btnRemoteStartStopClick(Sender: TObject);
    procedure ServerSocketClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure cmbRemoteKeyPress(Sender: TObject; var Key: Char);
    procedure cmbAFKKeyPress(Sender: TObject; var Key: Char);
    procedure cbSzklankaModeClick(Sender: TObject);
    procedure menUkryjClick(Sender: TObject);
    procedure menPokazClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtMaxCPKeyPress(Sender: TObject; var Key: Char);
    procedure sbTransChange(Sender: TObject);
    procedure colOSDChange(Sender: TObject);
    procedure colNormalHPChange(Sender: TObject);
    procedure tmrDelayTimer(Sender: TObject);
    procedure btnWczytajVistaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure cmbKlasaChange(Sender: TObject);
    procedure imgF1Click(Sender: TObject);
    procedure imgF2Click(Sender: TObject);
    procedure imgF3Click(Sender: TObject);
    procedure imgF4Click(Sender: TObject);
    procedure imgF5Click(Sender: TObject);
    procedure imgF6Click(Sender: TObject);
    procedure imgF7Click(Sender: TObject);
    procedure imgF8Click(Sender: TObject);
    procedure imgF9Click(Sender: TObject);
    procedure imgF10Click(Sender: TObject);
    procedure imgF11Click(Sender: TObject);
    procedure imgF12Click(Sender: TObject);
    procedure imgAttackClick(Sender: TObject);
    procedure imgAssistClick(Sender: TObject);
    procedure imgNextTargetClick(Sender: TObject);
    procedure imgSitClick(Sender: TObject);
    procedure imgRunClick(Sender: TObject);
    procedure imgInviteClick(Sender: TObject);
    procedure imgDismissClick(Sender: TObject);
    procedure imgChangePartyLeaderClick(Sender: TObject);
    procedure imgLeaveClick(Sender: TObject);
    procedure imgPickUpClick(Sender: TObject);
    procedure edtNickKeyPress(Sender: TObject; var Key: Char);
    procedure lblDelayClick(Sender: TObject);
    procedure imgChampionClick(Sender: TObject);
    procedure imgRenewalClick(Sender: TObject);
    procedure imgMeditationClick(Sender: TObject);
    procedure imgEarthClick(Sender: TObject);
    procedure imgHunterClick(Sender: TObject);
    procedure imgWardingClick(Sender: TObject);
    procedure imgVitalityClick(Sender: TObject);
    procedure imgWindClick(Sender: TObject);
    procedure imgInvocationClick(Sender: TObject);
    procedure imgStormClick(Sender: TObject);
    procedure imgFlameClick(Sender: TObject);
    procedure imgFireClick(Sender: TObject);
    procedure imgFuryClick(Sender: TObject);
    procedure imgWarriorClick(Sender: TObject);
    procedure imgVampireClick(Sender: TObject);
    procedure imgInspirationClick(Sender: TObject);
    procedure imgConcentrationClick(Sender: TObject);
    procedure imgMysticClick(Sender: TObject);
    procedure imgSirenClick(Sender: TObject);
    procedure imgShadowClick(Sender: TObject);
    procedure imgMedusaClick(Sender: TObject);
    procedure btnDelayClick(Sender: TObject);
    procedure imgCFlameClick(Sender: TObject);
    procedure imgEvasionClick(Sender: TObject);
    procedure imgEagleClick(Sender: TObject);
    procedure imgBattleClick(Sender: TObject);
    procedure imgCFuryClick(Sender: TObject);
    procedure imgRageClick(Sender: TObject);
    procedure imgPredatorClick(Sender: TObject);
    procedure imgShieldingClick(Sender: TObject);
    procedure imgCFireClick(Sender: TObject);
    procedure imgWarClick(Sender: TObject);
    procedure imgCEarthClick(Sender: TObject);
    procedure imgVictoryClick(Sender: TObject);
    procedure imgSpiritClick(Sender: TObject);
    procedure imgCVampireClick(Sender: TObject);
    procedure imgAcumenClick(Sender: TObject);
    procedure imgGuidanceClick(Sender: TObject);
    procedure imgMightClick(Sender: TObject);
    procedure imgHasteClick(Sender: TObject);
    procedure imgFocusClick(Sender: TObject);
    procedure imgDeathWhisperClick(Sender: TObject);
    procedure imgShieldClick(Sender: TObject);
    procedure imgMagicDefClick(Sender: TObject);
    procedure imgGMightClick(Sender: TObject);
    procedure imgGShieldClick(Sender: TObject);
    procedure imgBTBClick(Sender: TObject);
    procedure imgBTSClick(Sender: TObject);
    procedure imgZerkClick(Sender: TObject);
    procedure imgMentalClick(Sender: TObject);
    procedure imgPPConcentrationClick(Sender: TObject);
    procedure imgBlessShieldClick(Sender: TObject);
    procedure imgElementalProtectionClick(Sender: TObject);
    procedure imgHolyResClick(Sender: TObject);
    procedure imgUnholyResClick(Sender: TObject);
    procedure imgPofClick(Sender: TObject);
//    procedure wpiszkomende(komenda:string);
    procedure tmrDelay2Timer(Sender: TObject);
    procedure tbHP2Change(Sender: TObject);
    procedure tbCP2Change(Sender: TObject);
    procedure tmrDelayCPTimer(Sender: TObject);
    procedure sbInterwalAFKChange(Sender: TObject);
    procedure sbInterwalCPChange(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure Zapisz1Click(Sender: TObject);
    procedure Wczyttaj1Click(Sender: TObject);
    procedure tmrRemoteHPMPTimer(Sender: TObject);
    procedure imgEmpowerClick(Sender: TObject);
    procedure imgWMClick(Sender: TObject);
    procedure imgSEFocusClick(Sender: TObject);
    procedure imgSEDWClick(Sender: TObject);
    procedure imgSEVampiricClick(Sender: TObject);
    procedure imgPOWindClick(Sender: TObject);
    procedure imgSERechargeClick(Sender: TObject);
    procedure btnSekUPClick(Sender: TObject);
    procedure btnSekDownClick(Sender: TObject);
    procedure sbWallHackDelayChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnWallHackRunClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnFullZestawClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);

  private
    procedure WMHOTKEY(var Msg : TMessage); message WM_HOTKEY;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  AdresCP,MojeCP,MaxCP,SpamCP: integer;
  AdresHP,MojeHP,MaxHP,SpamHP: integer;
  AdresMP,MojeMP,MaxMP,SpamMP: integer;
  LicznikAFK,SleepAFK: integer;
  Opoznienie: integer;
  OsdHPX,OsdHPY:string;
  DelayAFK,DelayHP,DelayHP2,DelayCP: boolean;
  Akcja:string;
  SpamUchwyt:Integer;


implementation

uses UnitSzklankaMode, UnitKomunikaty;

{$R *.dfm}

procedure copyfile(old, new: string);
var
  infile, outfile: file;
  buf: array[1..2048] of char;
  numread, numwritten: longint;
begin
// open files - no error checking you should add that
  assign(infile, old);
  reset(infile, 1);
  assign(outfile, new);
  rewrite(outfile, 1);
// copy file
repeat
  blockread(infile, buf, sizeof(buf), numread);
  blockwrite(outfile, buf, numread, numwritten);
until (numread = 0) or (numwritten <> numread);
  close(infile);
  close(outfile);
end;

procedure TfrmMain.WMHOTKEY(var Msg: TMessage);
begin
  if Msg.WParam = $0001 then btnStartStopClick(nil);
  if Msg.WParam = $0002 then btnAFKStartStopClick(nil);
end;

procedure PostKeyExHWND(hWindow: HWnd; key: Word; const shift: TShiftState; 
  specialkey: Boolean); 
type 
  TBuffers = array [0..1] of TKeyboardState; 
var 
  pKeyBuffers: ^TBuffers; 
  lParam: LongInt; 
begin 
  if IsWindow(hWindow) then 
  begin 
    pKeyBuffers := nil; 
    lParam := MakeLong(0, MapVirtualKey(key, 0)); 
    if specialkey then 
      lParam := lParam or $1000000; 
    New(pKeyBuffers); 
    try 
      (* Fill buffer 1 with current state so we can later restore it. 
         Null out buffer 0 to get a "no key pressed" state. *) 
      GetKeyboardState(pKeyBuffers^[1]); 
      FillChar(pKeyBuffers^[0], SizeOf(TKeyboardState), 0); 

      (* set the requested modifier keys to "down" state in the buffer*) 
      if ssShift in shift then 
        pKeyBuffers^[0][VK_SHIFT] := $80; 
      if ssAlt in shift then 
      begin 
        (* Alt needs special treatment since a bit in lparam needs also be set *) 
        pKeyBuffers^[0][VK_MENU] := $80; 
        lParam := lParam or $20000000; 
      end; 
      if ssCtrl in shift then 
        pKeyBuffers^[0][VK_CONTROL] := $80; 
      if ssLeft in shift then 
        pKeyBuffers^[0][VK_LBUTTON] := $80; 
      if ssRight in shift then 
        pKeyBuffers^[0][VK_RBUTTON] := $80; 
      if ssMiddle in shift then 
        pKeyBuffers^[0][VK_MBUTTON] := $80; 
       (* make out new key state array the active key state map *) 
      SetKeyboardState(pKeyBuffers^[0]); 
      (* post the key messages *) 
      if ssAlt in Shift then 
      begin 
        PostMessage(hWindow, WM_SYSKEYDOWN, key, lParam); 
        PostMessage(hWindow, WM_SYSKEYUP, key, lParam or $C0000000); 
      end 
      else 
      begin 
        PostMessage(hWindow, WM_KEYDOWN, key, lParam); 
        PostMessage(hWindow, WM_KEYUP, key, lParam or $C0000000); 
      end; 
      (* process the messages *) 
      Application.ProcessMessages; 
       (* restore the old key state map *) 
      SetKeyboardState(pKeyBuffers^[1]); 
    finally 
      (* free the memory for the key state buffers *) 
      if pKeyBuffers <> nil then 
        Dispose(pKeyBuffers); 
    end; { If } 
  end; 
end;

procedure wpiszkomende(komenda:string);
var i:integer;
begin
  PostMessage(SpamUchwyt,WM_KEYDOWN,VK_RETURN,0);
  PostMessage(SpamUchwyt,WM_KEYUP,VK_RETURN,0);
  PostMessage(SpamUchwyt,WM_KEYDOWN,VK_BACK,0);
  PostMessage(SpamUchwyt,WM_KEYUP,VK_BACK,0);
  for i:=1 to length(komenda) do begin
    PostMessage(SpamUchwyt,WM_CHAR,ord(komenda[i]),0);
  end; //koniec for i:=1.....
  PostMessage(SpamUchwyt,WM_KEYDOWN,VK_RETURN,0);
  PostMessage(SpamUchwyt,WM_KEYUP,VK_RETURN,0);
end;

procedure WcisnijKeja(F:string);
begin
  if F='F1' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
  end;
  if F='F2' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F2,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F2,0);
  end;
  if F='F3' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F3,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F3,0);
  end;
  if F='F4' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F4,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F4,0);
  end;
  if F='F5' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F5,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F5,0);
  end;
  if F='F6' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F6,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F6,0);
  end;
  if F='F7' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F7,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F7,0);
  end;
  if F='F8' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F8,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F8,0);
  end;
  if F='F9' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F9,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F9,0);
  end;
  if F='F10' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F10,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F10,0);
  end;
  if F='F11' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F11,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F11,0);
  end;
  if F='F12' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F12,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F12,0);
  end;
  if F='2 1' then wpiszkomende('/useshortcut 2 1');
  if F='2 2' then wpiszkomende('/useshortcut 2 2');
  if F='2 3' then wpiszkomende('/useshortcut 2 3');
  if F='2 4' then wpiszkomende('/useshortcut 2 4');
  if F='2 5' then wpiszkomende('/useshortcut 2 5');
  if F='2 6' then wpiszkomende('/useshortcut 2 6');
  if F='2 7' then wpiszkomende('/useshortcut 2 7');
  if F='2 8' then wpiszkomende('/useshortcut 2 8');
  if F='2 9' then wpiszkomende('/useshortcut 2 9');
//  if F='2 10' then wpiszkomende('/useshortcut 2 10');
  if F='2 11' then wpiszkomende('/useshortcut 2 11');
  if F='2 12' then wpiszkomende('/useshortcut 2 12');
  if F='3 1' then wpiszkomende('/useshortcut 3 1');
  if F='3 2' then wpiszkomende('/useshortcut 3 2');
  if F='3 3' then wpiszkomende('/useshortcut 3 3');
  if F='3 4' then wpiszkomende('/useshortcut 3 4');
  if F='3 5' then wpiszkomende('/useshortcut 3 5');
  if F='3 6' then wpiszkomende('/useshortcut 3 6');
  if F='3 7' then wpiszkomende('/useshortcut 3 7');
  if F='3 8' then wpiszkomende('/useshortcut 3 8');
  if F='3 9' then wpiszkomende('/useshortcut 3 9');
  if F='3 10' then wpiszkomende('/useshortcut 3 10');
  if F='3 11' then wpiszkomende('/useshortcut 3 11');
  if F='3 12' then wpiszkomende('/useshortcut 3 12');
 {


  if F='2 1' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 2' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F2,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F2,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 3' then begin
//    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN, 536870963,0);

    PostMessage(SpamUchwyt,WM_KEYUP, 536870963,0);
//    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 4' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 5' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 6' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 7' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 8' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 9' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  }
  if F='2 10' then begin
    //PostMessage(SpamUchwyt,WM_SYSKEYDOWN,VK_MENU,0);
    //PostMessage(SpamUchwyt,WM_SYSKEYDOWN,ord('0'),536870912);
    //PostMessage(SpamUchwyt,WM_SYSKEYUP,ord('0'),536870912);
  //  PostMessage(SpamUchwyt,WM_SYSKEYUP,VK_MENU,0);
  PostKeyExHWND(SpamUchwyt, Ord('1'), [ssAlt], False);
  end;
{  if F='2 11' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,ord('-'),0);
    PostMessage(SpamUchwyt,WM_KEYUP,ord('-'),0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='2 12' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,ord('='),0);
    PostMessage(SpamUchwyt,WM_KEYUP,ord('='),0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 1' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD1,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 2' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD2,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD2,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 3' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD3,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD3,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 4' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD4,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD4,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 5' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD5,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD5,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 6' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD6,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD6,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 7' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD7,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD7,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 8' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD8,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD8,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 9' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD9,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD9,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 10' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_NUMPAD0,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_NUMPAD0,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 11' then begin
    SendMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU + VK_DIVIDE,0);
    SendMessage(SpamUchwyt,WM_KEYDOWN,VK_DIVIDE,0);
    SendMessage(SpamUchwyt,WM_KEYUP,VK_DIVIDE,0);
    SendMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  if F='3 12' then begin
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MENU,0);
    PostMessage(SpamUchwyt,WM_KEYDOWN,VK_MULTIPLY,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MULTIPLY,0);
    PostMessage(SpamUchwyt,WM_KEYUP,VK_MENU,0);
  end;
  }
end;


procedure TfrmMain.tmrSpamTimer(Sender: TObject);
var
    A,B:byte;
    F:string;
begin

if (FindWindow(nil,'Lineage II') = 0) then begin
  cbSzklankaMode.Checked:=False;
  if btnStartStop.Caption='Stop' then btnStartStopClick(nil);
  tmrSpam.Enabled:=False;
  tabSpam.TabVisible:=False;
  tabWczytaj.TabVisible:=True;
  PageControl.ActivePageIndex:=1;
  frmMain.Height:=205;
  if cbSzklankaMode.Checked=True then frmSzklankaMode.Hide;
  tmrSpam.Enabled:=False;
  ShowMessage('Nie wykryto gry, wylaczam spamera!');
  Exit;
end;
Cheater.Address:=AdresCP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresCP+1;
B:=ord(Cheater.ReadMem);
MojeCP:=((B*256)+A);
Cheater.Address:=AdresCP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresCP-8+1;
B:=ord(Cheater.ReadMem);
MaxCP:=((B*256)+A);

Cheater.Address:=AdresHP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresHP+1;
B:=ord(Cheater.ReadMem);
MojeHP:=((B*256)+A);
Cheater.Address:=AdresHP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresHP-8+1;
B:=ord(Cheater.ReadMem);
MaxHP:=((B*256)+A);

Cheater.Address:=AdresMP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresMP+1;
B:=ord(Cheater.ReadMem);
MojeMP:=((B*256)+A);
Cheater.Address:=AdresMP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresMP-8+1;
B:=ord(Cheater.ReadMem);
MaxMP:=((B*256)+A);

if ((MaxCP*tbCP.Position*5) div 100 > MojeCP) and (btnStartStop.Caption='Stop') then begin
  WcisnijKeja(cmbF1.Text);
  WcisnijKeja(cmbF2.Text);
end;
if (DelayHP=False) and (cmbF3.Text<>'Off') then
if ((MaxHP*tbHP.Position*5) div 100 > MojeHP) and (btnStartStop.Caption='Stop') then begin
  WcisnijKeja(cmbF3.Text);
  tmrDelay.Interval:=strtoint(edtDelay.Text)*1000;
  DelayHP:=True;
  tmrDelay.Enabled:=True;
end;
if (DelayHP2=False) and (cmbF4.Text<>'Off') then
if ((MaxHP*tbHP2.Position*5) div 100 > MojeHP) and (btnStartStop.Caption='Stop') then begin
  WcisnijKeja(cmbF4.Text);
  tmrDelay2.Interval:=strtoint(edtDelay2.Text)*1000;
  DelayHP2:=True;
  tmrDelay2.Enabled:=True;
end;
if (DelayCP=False) and (cmbF5.Text<>'Off') then
if ((MaxCP*tbCP2.Position*5) div 100 > MojeCP) and (btnStartStop.Caption='Stop') then begin
  WcisnijKeja(cmbF5.Text);
  tmrDelayCP.Interval:=strtoint(edtDelayCP.Text)*1000;
  DelayCP:=True;
  tmrDelayCP.Enabled:=True;
end;
  if (MaxHP<>0) then frmSzklankaMode.lblSzklankaMode.Caption:=inttostr((MojeHP*100) div MaxHP)+'%';
  if cbSzklankaMode.Checked=True then begin
    if (MaxHP*30) div 100 > MojeHP then begin
      frmSzklankaMode.lblSzklankaMode.Font.Color:=colLowHP.Selected;
   end else begin
      frmSzklankaMode.lblSzklankaMode.Font.Color:=colNormalHP.Selected;
    end;
  end;
end;




procedure TfrmMain.btnWczytajClick(Sender: TObject);
var
    A,B:byte;
    i:integer;
begin
MaxCP:=strtoint(edtMaxCP.Text);
if (SpamUchwyt = 0) then begin
  tmrSpam.Enabled:=False;
  ShowMessage('Najpierw wlacz L2 i zaloguj sie na postac!');
  Exit;
end;
for i:=0 to 1024 do
  begin
    AdresCP:=230697280+((i*65536)*-1);
    Cheater.Address:=AdresCP;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresCP+1;
    B:=ord(Cheater.ReadMem);
    if (MaxCP=(B*256)+A) then begin
      AdresCP:=AdresCP+8;
      AdresHP:=AdresCP-896;
      AdresMP:=AdresHP-896;
//------------------//
Cheater.Address:=AdresCP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresCP+1;
B:=ord(Cheater.ReadMem);
MojeCP:=((B*256)+A);
Cheater.Address:=AdresCP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresCP-8+1;
B:=ord(Cheater.ReadMem);
MaxCP:=((B*256)+A);
Cheater.Address:=AdresHP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresHP+1;
B:=ord(Cheater.ReadMem);
MojeHP:=((B*256)+A);
Cheater.Address:=AdresHP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresHP-8+1;
B:=ord(Cheater.ReadMem);
MaxHP:=((B*256)+A);
Cheater.Address:=AdresMP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresMP+1;
B:=ord(Cheater.ReadMem);
MojeMP:=((B*256)+A);
Cheater.Address:=AdresMP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresMP-8+1;
B:=ord(Cheater.ReadMem);
MaxMP:=((B*256)+A);
//------------------//
      tabSpam.TabVisible:=True;
      PageControl.ActivePageIndex:=0;
      tabWczytaj.TabVisible:=False;
      tmrSpam.Enabled:=True; //---//
//      ShowMessage('Wszystko OK, mozna juz Spamowac :)');
      Exit;
    end;
  end;
ShowMessage('Blad! Czy na pewno podales prawidlowa wartosc?');

end;

procedure TfrmMain.tmrOdswierzTimer(Sender: TObject);
begin
if tabSpam.TabVisible=true then
if (FindWindow(nil,'Lineage II') = 0) then begin
  cbSzklankaMode.Checked:=False;
  if btnStartStop.Caption='Stop' then btnStartStopClick(nil);
  tmrSpam.Enabled:=False;
  tabSpam.TabVisible:=False;
  tabWczytaj.TabVisible:=True;
  PageControl.ActivePageIndex:=1;
  frmMain.Height:=205;
  if cbSzklankaMode.Checked=True then frmSzklankaMode.Hide;
  tmrSpam.Enabled:=False;
  ShowMessage('Nie wykryto gry, wylaczam spamera!');
  Exit;
end;
lblMojeCP.Caption:=inttostr(MojeCP);
lblMojeHP.Caption:=inttostr(MojeHP);
lblMojeMP.Caption:=inttostr(MojeMP);
lblMaxCP.Caption:=inttostr(MaxCP);
lblMaxHP.Caption:=inttostr(MaxHP);
lblMaxMP.Caption:=inttostr(MaxMP);
end;

procedure TfrmMain.tbCPChange(Sender: TObject);
begin
lblSpamCP.Caption:=inttostr(tbCP.Position*5)+' %';
end;

procedure TfrmMain.btnStartStopClick(Sender: TObject);
begin
if tabSpam.TabVisible=True then begin
  if btnStartStop.Caption='Stop' then begin
//---//    if cbSzklankaMode.Checked=False then tmrSpam.Enabled:=False;
    btnStartStop.Caption:='Start';
    frmKomunikaty.lblKomunikaty.Caption:='CP Spam: OFF';
    frmKomunikaty.Show;
    frmKomunikaty.tmrKomunikaty.Enabled:=False;;
    frmKomunikaty.tmrKomunikaty.Enabled:=True;
  end else
  if btnStartStop.Caption='Start' then begin
//---//    tmrSpam.Enabled:=True;
    btnStartStop.Caption:='Stop';
    frmKomunikaty.lblKomunikaty.Caption:='CP Spam: ON';
    frmKomunikaty.Show;
    frmKomunikaty.tmrKomunikaty.Enabled:=False;
    frmKomunikaty.tmrKomunikaty.Enabled:=True;
  end;
end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  PlikINI: TextFile;
  s: string;
begin
MaxHP:=1;
OsdHPX:='330';
OsdHPY:='70';
DelayHP:=False;
DelayHP2:=False;
DelayCP:=False;
 SetWindowPos(frmMain.Handle,
              HWND_TOPMOST,
              0, 0, 0, 0,
              SWP_NOMOVE or SWP_NOSIZE or SWP_SHOWWINDOW);

  //------ustawienie editow na przyjmowanie tylko cyfr
  SetWindowLong(edtDelay.Handle, GWL_STYLE,
                GetWindowLong(edtDelay.Handle, GWL_STYLE) or ES_NUMBER);
  SetWindowLong(edtDelayCP.Handle, GWL_STYLE,
                GetWindowLong(edtDelayCP.Handle, GWL_STYLE) or ES_NUMBER);
  SetWindowLong(edtDelay2.Handle, GWL_STYLE,
                GetWindowLong(edtDelay2.Handle, GWL_STYLE) or ES_NUMBER);
  SetWindowLong(edtMaxCP.Handle, GWL_STYLE,
                GetWindowLong(edtMaxCP.Handle, GWL_STYLE) or ES_NUMBER);
  SetWindowLong(edtMaxHP.Handle, GWL_STYLE,
                GetWindowLong(edtMaxCP.Handle, GWL_STYLE) or ES_NUMBER);
  SetWindowLong(edtMaxMP.Handle, GWL_STYLE,
                GetWindowLong(edtMaxCP.Handle, GWL_STYLE) or ES_NUMBER);
  SetWindowLong(edtSekundy.Handle, GWL_STYLE,
                GetWindowLong(edtSekundy.Handle, GWL_STYLE) or ES_NUMBER);


  if FileExists('Config.ini') then begin
    AssignFile(PlikINI,'Config.ini');
    Reset(PlikINI);
    Readln(PlikINI,s);
    tbCP2.Position:=strtoint(s);
    Readln(PlikINI,s);
    cmbF5.Text:=s;
    Readln(PlikINI,s);
    edtDelayCP.Text:=s;
    Readln(PlikINI,s);
    tbHP2.Position:=strtoint(s);
    Readln(PlikINI,s);
    cmbF4.Text:=s;
    Readln(PlikINI,s);
    edtDelay2.Text:=s;
    Readln(PlikINI,s);
    tbCP.Position:=strtoint(s);
    Readln(PlikINI,s);
    cmbF1.Text:=s;
    Readln(PlikINI,s);
    cmbF2.Text:=s;
    Readln(PlikINI,s);
    tbHP.Position:=strtoint(s);
    Readln(PlikINI,s);
    cmbF3.Text:=s;
    Readln(PlikINI,s);
    edtMaxCP.Text:=s;
    Readln(PlikINI,s);
    edtMaxHP.Text:=s;
    Readln(PlikINI,s);
    edtMaxMP.Text:=s;
    Readln(PlikINI,s);
    edtIP.Text:=s;
    Readln(PlikINI,s);
    sbTrans.Position:=strtoint(s);
    Readln(PlikINI,s);
    colOSD.Selected:=stringtocolor(s);
    Readln(PlikINI,s);
    colNormalHP.Selected:=stringtocolor(s);
    Readln(PlikINI,s);
    colLowHP.Selected:=stringtocolor(s);
    Readln(PlikINI,s);
    edtDelay.Text:=s;
    Readln(PlikINI,s);
    edtSekundy.Text:=s;
    Readln(PlikINI,OsdHPX);
    Readln(PlikINI,OsdHPY);
    Readln(PlikINI,s);
    frmMain.Left:=strtoint(s);
    Readln(PlikINI,s);
    frmMain.Top:=strtoint(s);
    Readln(PlikINI,s);
    sbInterwalAFK.Position:=strtoint(s);
    Readln(PlikINI,s);
    sbInterwalCP.Position:=strtoint(s);
    Readln(PlikINI,s);
    sbWallHackDelay.Position:=strtoint(s);
    Readln(PlikINI,s);
    edtSciezka.Text:=s;
    CloseFile(PlikINI);
  end;
  //skroty
  RegisterHotKey(frmMain.Handle, $0001, MOD_CONTROL,  VK_HOME);
  RegisterHotKey(frmMain.Handle, $0002, MOD_CONTROL,  VK_END);
end;

procedure TfrmMain.tmrAFKTimer(Sender: TObject);
var
    i:integer;
    s,m:string;
begin
  inc(LicznikAFK);
  s:=memAFK.Lines.Strings[LicznikAFK];
  lblWykonuje.Caption:=s;
  lblCzas.Caption:=inttostr(LicznikAFK);
  if s<>'' then
    //F1 do F12//start
    if s='F1' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    end else
    if s='F2' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F2,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F2,0);
    end else
    if s='F3' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F3,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F3,0);
    end else
    if s='F4' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F4,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F4,0);
    end else
    if s='F5' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F5,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F5,0);
    end else
    if s='F6' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F6,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F6,0);
    end else
    if s='F7' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F7,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F7,0);
    end else
    if s='F8' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F8,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F8,0);
    end else
    if s='F9' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F9,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F9,0);
    end else
    if s='F10' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F10,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F10,0);
    end else
    if s='F11' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F11,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F11,0);
    end else
    if s='F12' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F12,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F12,0);
    end else
    //F1 do F12//stop
    if s[1]<>'*' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_RETURN,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_RETURN,0);
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_BACK,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_BACK,0);
      for i:=1 to length(s) do begin
        PostMessage(SpamUchwyt,WM_CHAR,ord(s[i]),0);
      end; //koniec for i:=1.....
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_RETURN,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_RETURN,0);
    end else begin //koniec if s[1]<>'*'....
      if DelayAFK=False then begin
        DelayAFK:=True;
        m:='';
        for i:=2 to length(s) do begin
          if s[i]='*' then break;
          m:=m+s[i];
        end;
        try
          SleepAFK:=strtoint(m);
        except
          ShowMessage('Blad skladni: '+s+'\n Popraw i sprobuj raz jeszcze!');
          frmMain.btnAFKStartStopClick(nil);
          Exit;
        end;
        //dec(LicznikAFK);
      end;//if delay afk
      if DelayAFK=True then begin
        dec(SleepAFK);
        if SleepAFK<=0 then DelayAFK:=False else dec(LicznikAFK);
      end;
    end;    //end elsse begin
  if LicznikAFK=memAFK.Lines.Count-1 then LicznikAFK:=-1*strtoint(edtSekundy.Text)-1;
end; //koniec procedury

procedure TfrmMain.btnAFKStartStopClick(Sender: TObject);
begin
if btnAFKStartStop.Caption='Start' then begin
  LicznikAFK:=-1;
  tmrAFK.Enabled:=True;
  btnAFKStartStop.Caption:='Stop';
  frmKomunikaty.lblKomunikaty.Caption:='AFK Mode: ON';
  frmKomunikaty.Show;
  frmKomunikaty.tmrKomunikaty.Enabled:=False;
  frmKomunikaty.tmrKomunikaty.Enabled:=True;
  edtSekundy.Enabled:=False;
  memAFK.Enabled:=False;
  cmbAFK.Enabled:=False;
  btnDodaj.Enabled:=False;
  frmMain.Height:=205;
end else begin
  tmrAFK.Enabled:=False;
  btnAFKStartStop.Caption:='Start';
  frmKomunikaty.lblKomunikaty.Caption:='AFK Mode: OFF';
  frmKomunikaty.Show;
  frmKomunikaty.tmrKomunikaty.Enabled:=False;
  frmKomunikaty.tmrKomunikaty.Enabled:=True;
  edtSekundy.Enabled:=True;
  memAFK.Enabled:=True;
  cmbAFK.Enabled:=True;
  btnDodaj.Enabled:=True;
  frmMain.Height:=342;
end;


end;

procedure TfrmMain.btnDodajClick(Sender: TObject);
begin
memAFK.Lines.Add(cmbAFK.Text);
cmbAFK.Text:='';
end;

procedure TfrmMain.tbHPChange(Sender: TObject);
begin
lblSpamHP.Caption:=inttostr(tbHP.Position*5)+' %';
end;

procedure TfrmMain.btnWyslijClick(Sender: TObject);
begin
memLog.Lines.Add('Wykonaj: '+cmbRemote.Text);
ClientSocket.Socket.SendText(cmbRemote.Text);
cmbRemote.Items.Add(cmbRemote.Text);
cmbRemote.Text:='';
end;

procedure TfrmMain.rbSerwerClick(Sender: TObject);
begin
  if rbSerwer.Checked=True then edtIP.Visible:=False;
end;

procedure TfrmMain.rbKlientClick(Sender: TObject);
begin
  if rbKlient.Checked=True then edtIP.Visible:=True;
end;

procedure TfrmMain.btnRemoteStartStopClick(Sender: TObject);
begin
  if rbSerwer.Checked=True then
    if btnRemoteStartStop.Caption='Start' then begin
      ServerSocket.Active:=True;
      btnRemoteStartStop.Caption:='Stop';
      rbKlient.Enabled:=False;
      rbSerwer.Enabled:=False;
    end else begin
      ServerSocket.Active:=False;
      btnRemoteStartStop.Caption:='Start';
      rbKlient.Enabled:=True;
      rbSerwer.Enabled:=True;
    end;
  if rbKlient.Checked=True then
    if btnRemoteStartStop.Caption='Start' then begin
      ClientSocket.Address:=edtIP.Text;
      ClientSocket.Active:=True;
      btnRemoteStartStop.Caption:='Stop';
      rbKlient.Enabled:=False;
      rbSerwer.Enabled:=False;
      edtIP.Enabled:=False;
      cmbRemote.Enabled:=True;
      btnWyslij.Enabled:=True;
      frmMain.Height:=342;
    end else begin
      ClientSocket.Active:=False;
      btnRemoteStartStop.Caption:='Start';
      rbKlient.Enabled:=True;
      rbSerwer.Enabled:=True;
      edtIP.Enabled:=True;
      cmbRemote.Enabled:=False;
      btnWyslij.Enabled:=False;
      frmMain.Height:=205;
    end;
end;

procedure TfrmMain.ServerSocketClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  co:string;
  i:integer;
begin
  co:=Socket.ReceiveText;
    if co='*HPMPPLOX*' then begin
      if (tabSpam.TabVisible=True) then
        for i:=0 to ServerSocket.Socket.ActiveConnections-1 do
          ServerSocket.Socket.Connections[i].SendText('HP: '+inttostr(MojeHP)+' MP: '+inttostr(MojeMP))
      else
        for i:=0 to ServerSocket.Socket.ActiveConnections-1 do
          ServerSocket.Socket.Connections[i].SendText('HP: N/A MP: N/A');
    end else
    if co='F1' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F1,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F1,0);
    end else
    if co='F2' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F2,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F2,0);
    end else
    if co='F3' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F3,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F3,0);
    end else
    if co='F4' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F4,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F4,0);
    end else
    if co='F5' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F5,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F5,0);
    end else
    if co='F6' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F6,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F6,0);
    end else
    if co='F7' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F7,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F7,0);
    end else
    if co='F8' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F8,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F8,0);
    end else
    if co='F9' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F9,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F9,0);
    end else
    if co='F10' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F10,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F10,0);
    end else
    if co='F11' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F11,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F11,0);
    end else
    if co='F12' then begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_F12,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_F12,0);
    end else begin
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_RETURN,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_RETURN,0);
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_BACK,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_BACK,0);
      for i:=1 to length(co) do begin
        PostMessage(SpamUchwyt,WM_CHAR,ord(co[i]),0);
      end; //koniec for i:=1.....
      PostMessage(SpamUchwyt,WM_KEYDOWN,VK_RETURN,0);
      PostMessage(SpamUchwyt,WM_KEYUP,VK_RETURN,0);
    end;
    if co<>'*HPMPPLOX*' then begin
      memLog.Lines.Add('Wykonalem polecenie: '+co);
        for i:=0 to ServerSocket.Socket.ActiveConnections-1 do
          ServerSocket.Socket.Connections[i].SendText('Wykonalem polecenie: '+co);
    end;
end;

procedure TfrmMain.ClientSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
var s:string;
begin
s:=ClientSocket.Socket.ReceiveText;
if (s[1]='H') and (s[2]='P') then
  lblRemHPMP.Caption:=s
else memLog.Lines.Add(s);
end;

procedure TfrmMain.cmbRemoteKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then btnWyslijClick(nil);
end;

procedure TfrmMain.cmbAFKKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    btnDodajClick(nil);
    cmbAFK.Text:='';
  end;
end;

procedure TfrmMain.cbSzklankaModeClick(Sender: TObject);
begin
if tabSpam.TabVisible=True then begin
  if cbSzklankaMode.Checked=True then begin
    frmSzklankaMode.Show;
//---//    tmrSpam.Enabled:=True;
  end else begin
    frmSzklankaMode.Hide;
//---//    if btnStartStop.Caption='Start' then tmrSpam.Enabled:=True;
  end;
end;
end;

procedure TfrmMain.menUkryjClick(Sender: TObject);
begin
frmMain.BorderStyle:=bsNone;
PageControl.ActivePageIndex:=4;
end;

procedure TfrmMain.menPokazClick(Sender: TObject);
begin
frmMain.BorderStyle:=bsSingle;
PageControl.ActivePageIndex:=4;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  PlikINI: TextFile;
  i: Integer;
begin
  UnregisterHotKey(frmMain.Handle, $0001);
  UnregisterHotKey(frmMain.Handle, $0002);
  AssignFile(PlikINI,'Config.ini');
  ReWrite(PlikINI);
  Writeln(PlikINI,inttostr(tbCP2.Position));
  Writeln(PlikINI,cmbF5.Text);
  Writeln(PlikINI,edtDelayCP.Text);
  Writeln(PlikINI,inttostr(tbHP2.Position));
  Writeln(PlikINI,cmbF4.Text);
  Writeln(PlikINI,edtDelay2.Text);
  Writeln(PlikINI,inttostr(tbCP.Position));
  Writeln(PlikINI,cmbF1.Text);
  Writeln(PlikINI,cmbF2.Text);
  Writeln(PlikINI,inttostr(tbHP.Position));
  Writeln(PlikINI,cmbF3.Text);
//  if cbSzklankaMode.Checked=True then Writeln(PlikINI,'1') else Writeln(PlikINI,'0');
  Writeln(PlikINI,edtMaxCP.Text);
  Writeln(PlikINI,edtMaxHP.Text);
  Writeln(PlikINI,edtMaxMP.Text);
  Writeln(PlikINI,edtIP.Text);
  Writeln(PlikINI,inttostr(sbTrans.Position));
  Writeln(PlikINI,colortostring(colOSD.Selected));
  Writeln(PlikINI,colortostring(colNormalHP.Selected));
  Writeln(PlikINI,colortostring(colLowHP.Selected));
  Writeln(PlikINI,edtDelay.Text);
  Writeln(PlikINI,edtSekundy.Text);
  Writeln(PlikINI,inttostr(frmSzklankaMode.Left));
  Writeln(PlikINI,inttostr(frmSzklankaMode.Top));
  Writeln(PlikINI,inttostr(frmMain.Left));
  Writeln(PlikINI,inttostr(frmMain.Top));
  Writeln(PlikINI,inttostr(sbInterwalAFK.Position));
  Writeln(PlikINI,inttostr(sbInterwalCP.Position));
  Writeln(PlikINI,inttostr(sbWallHackDelay.Position));
  Writeln(PlikINI,edtSciezka.Text);
//  for i:=0 to memAFK.Lines.Count-1 do
//    Writeln(PlikINI,memAFK.Lines.Strings[i]);
  CloseFile(PlikINI);
end;

procedure TfrmMain.edtMaxCPKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then btnWczytajClick(nil);
end;



procedure TfrmMain.sbTransChange(Sender: TObject);
begin
  frmMain.AlphaBlendValue:=sbTrans.Position;
  lblTrans.Caption:=inttostr(sbTrans.Position);
end;

procedure TfrmMain.colOSDChange(Sender: TObject);
begin
  frmKomunikaty.lblKomunikaty.Font.Color:=colOSD.Selected;
end;

procedure TfrmMain.colNormalHPChange(Sender: TObject);
begin
  if btnStartStop.Caption='Start' then frmSzklankaMode.lblSzklankaMode.Font.Color:=colNormalHP.Selected;
end;

procedure TfrmMain.tmrDelayTimer(Sender: TObject);
begin
//  if DelayHP=False then DelayHP:=True else begin
    tmrDelay.Enabled:=False;
    DelayHP:=False;
//  end;
end;

procedure TfrmMain.btnWczytajVistaClick(Sender: TObject);
var
    A,B:byte;
    i:integer;
begin
MaxCP:=strtoint(edtMaxCP.Text);
if (SpamUchwyt = 0) then begin
  tmrSpam.Enabled:=False;
  ShowMessage('Najpierw wlacz L2 i zaloguj sie na postac!');
  Exit;
end;
for i:=0 to 4096 do
  begin
//    AdresCP:=367798592+((i*65536)*-1);
    AdresCP:=502016320+((i*65536)*-1);
    Cheater.Address:=AdresCP;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresCP+1;
    B:=ord(Cheater.ReadMem);
    if (MaxCP=(B*256)+A) then begin
      AdresCP:=AdresCP+8;
      AdresHP:=AdresCP-896;
      AdresMP:=AdresHP-896;
//------------------//
Cheater.Address:=AdresCP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresCP+1;
B:=ord(Cheater.ReadMem);
MojeCP:=((B*256)+A);
Cheater.Address:=AdresCP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresCP-8+1;
B:=ord(Cheater.ReadMem);
MaxCP:=((B*256)+A);
Cheater.Address:=AdresHP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresHP+1;
B:=ord(Cheater.ReadMem);
MojeHP:=((B*256)+A);
Cheater.Address:=AdresHP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresHP-8+1;
B:=ord(Cheater.ReadMem);
MaxHP:=((B*256)+A);
Cheater.Address:=AdresMP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresMP+1;
B:=ord(Cheater.ReadMem);
MojeMP:=((B*256)+A);
Cheater.Address:=AdresMP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresMP-8+1;
B:=ord(Cheater.ReadMem);
MaxMP:=((B*256)+A);
//------------------//
      tabSpam.TabVisible:=True;
      PageControl.ActivePageIndex:=0;
      tabWczytaj.TabVisible:=False;
//      ShowMessage('Wszystko OK, mozna juz Spamowac :)');
      Exit;
    end;
  end;
ShowMessage('Blad! Czy na pewno podales prawidlowa wartosc?');

end;

procedure TfrmMain.Button2Click(Sender: TObject);
var
    A,B:byte;
    i:integer;
begin
MaxCP:=strtoint(edtMaxCP.Text);
if (SpamUchwyt = 0) then begin
  tmrSpam.Enabled:=False;
  ShowMessage('Najpierw wlacz L2 i zaloguj sie na postac!');
  Exit;
end;
for i:=0 to 1024 do
  begin
    AdresCP:=269457728+((i*65536)*-1);
    //235903304
    Cheater.Address:=AdresCP;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresCP+1;
    B:=ord(Cheater.ReadMem);
    if (MaxCP=(B*256)+A) then begin
      AdresCP:=AdresCP+8;
      AdresHP:=AdresCP-896;
      AdresMP:=AdresHP-896;
//------------------//
Cheater.Address:=AdresCP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresCP+1;
B:=ord(Cheater.ReadMem);
MojeCP:=((B*256)+A);
Cheater.Address:=AdresCP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresCP-8+1;
B:=ord(Cheater.ReadMem);
MaxCP:=((B*256)+A);
Cheater.Address:=AdresHP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresHP+1;
B:=ord(Cheater.ReadMem);
MojeHP:=((B*256)+A);
Cheater.Address:=AdresHP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresHP-8+1;
B:=ord(Cheater.ReadMem);
MaxHP:=((B*256)+A);
Cheater.Address:=AdresMP;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresMP+1;
B:=ord(Cheater.ReadMem);
MojeMP:=((B*256)+A);
Cheater.Address:=AdresMP-8;
A:=ord(Cheater.ReadMem);
Cheater.Address:=AdresMP-8+1;
B:=ord(Cheater.ReadMem);
MaxMP:=((B*256)+A);
//------------------//
      tabSpam.TabVisible:=True;
      PageControl.ActivePageIndex:=0;
      tabWczytaj.TabVisible:=False;
      tmrSpam.Enabled:=True; //---//
//      ShowMessage('Wszystko OK, mozna juz Spamowac :)');
      Exit;
    end;
  end;
ShowMessage('Blad! Czy na pewno podales prawidlowa wartosc?');

end;

procedure TfrmMain.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePageIndex=0 then frmMain.Height:=205;
  if PageControl.ActivePageIndex=1 then frmMain.Height:=205;
  if (PageControl.ActivePageIndex=2) then begin
    if (btnAFKStartStop.Caption='Start') then frmMain.Height:=342;
    if (btnAFKStartStop.Caption='Stop') then frmMain.Height:=205;
    btnDelay.Visible:=True;
    edtDelayMacro.Visible:=True;
  end;
  if (PageControl.ActivePageIndex=3) then begin
    if (btnRemoteStartStop.Caption='Stop') and (rbKlient.Checked=True) then frmMain.Height:=342;
    if (btnRemoteStartStop.Caption='Start') or (rbSerwer.Checked=True) then frmMain.Height:=205;
    btnDelay.Visible:=False;
    edtDelayMacro.Visible:=False;
  end;
//  if PageControl.ActivePageIndex=3 then frmMain.Height:=320;
  if PageControl.ActivePageIndex=4 then frmMain.Height:=205;
  if PageControl.ActivePageIndex=5 then frmMain.Height:=205;
  if PageControl.ActivePageIndex=6 then frmMain.Height:=205;

end;

procedure TfrmMain.cmbKlasaChange(Sender: TObject);
begin
if cmbKlasa.Text='Klawisze funkcyjne' then PageSkille.ActivePageIndex:=0;
if cmbKlasa.Text='Akcje podstawowe' then PageSkille.ActivePageIndex:=1;
if cmbKlasa.Text='Sword Singer' then PageSkille.ActivePageIndex:=2;
if cmbKlasa.Text='Blade Dancer' then PageSkille.ActivePageIndex:=3;
if cmbKlasa.Text='War Cryer' then PageSkille.ActivePageIndex:=4;
if cmbKlasa.Text='Prophet' then PageSkille.ActivePageIndex:=5;
if cmbKlasa.Text='Elven Elder' then PageSkille.ActivePageIndex:=6;
if cmbKlasa.Text='Shilen Elder' then PageSkille.ActivePageIndex:=7;
end;

procedure TfrmMain.imgF1Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F1');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F1');
    ClientSocket.Socket.SendText('F1');
  end;
end;

procedure TfrmMain.imgF2Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F2');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F2');
    ClientSocket.Socket.SendText('F2');
  end;
end;

procedure TfrmMain.imgF3Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F3');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F3');
    ClientSocket.Socket.SendText('F3');
  end;
end;

procedure TfrmMain.imgF4Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F4');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F4');
    ClientSocket.Socket.SendText('F4');
  end;
end;

procedure TfrmMain.imgF5Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F5');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F5');
    ClientSocket.Socket.SendText('F5');
  end;
end;

procedure TfrmMain.imgF6Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F6');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F6');
    ClientSocket.Socket.SendText('F6');
  end;
end;

procedure TfrmMain.imgF7Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F7');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F7');
    ClientSocket.Socket.SendText('F7');
  end;
end;

procedure TfrmMain.imgF8Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F8');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F8');
    ClientSocket.Socket.SendText('F8');
  end;
end;

procedure TfrmMain.imgF9Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F9');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F9');
    ClientSocket.Socket.SendText('F9');
  end;
end;

procedure TfrmMain.imgF10Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F10');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F10');
    ClientSocket.Socket.SendText('F10');
  end;
end;

procedure TfrmMain.imgF11Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F11');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F11');
    ClientSocket.Socket.SendText('F11');
  end;
end;

procedure TfrmMain.imgF12Click(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('F12');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: F12');
    ClientSocket.Socket.SendText('F12');
  end;
end;

procedure TfrmMain.imgAttackClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/attack');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /attack');
    ClientSocket.Socket.SendText('/attack');
  end;
end;

procedure TfrmMain.imgAssistClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/assist');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /assist');
    ClientSocket.Socket.SendText('/assist');
  end;
end;

procedure TfrmMain.imgNextTargetClick(Sender: TObject);
begin
    Akcja:='/target ';
    edtNick.Top:=8;
    edtNick.Left:=68;
    edtNick.Visible:=True;
end;

procedure TfrmMain.imgSitClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/sit');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /sit');
    ClientSocket.Socket.SendText('/sit');
  end;
end;

procedure TfrmMain.imgRunClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/walk');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /walk');
    ClientSocket.Socket.SendText('/walk');
  end;
end;

procedure TfrmMain.imgInviteClick(Sender: TObject);
begin
    Akcja:='/invite ';
    edtNick.Top:=44;
    edtNick.Left:=0;
    edtNick.Visible:=True;
end;

procedure TfrmMain.imgDismissClick(Sender: TObject);
begin
    Akcja:='/dismiss ';
    edtNick.Top:=44;
    edtNick.Left:=32;
    edtNick.Visible:=True;
end;

procedure TfrmMain.imgChangePartyLeaderClick(Sender: TObject);
begin
    Akcja:='/changepartyleader ';
    edtNick.Top:=44;
    edtNick.Left:=70;
    edtNick.Visible:=True;
end;

procedure TfrmMain.imgLeaveClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/leave');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /leave');
    ClientSocket.Socket.SendText('/leave');
  end;
end;

procedure TfrmMain.imgPickUpClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/pickup');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /pickup');
    ClientSocket.Socket.SendText('/pickup');
  end;
end;

procedure TfrmMain.edtNickKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
 //AFK MODE
    if PageControl.ActivePageIndex=2 then begin
      memAFK.Lines.Add(Akcja+edtNick.Text);
      edtNick.Visible:=False;
    end;
//REMOTE MODE
    if PageControl.ActivePageIndex=3 then begin
      memLog.Lines.Add('Wykonaj: '+Akcja+edtNick.Text);
      ClientSocket.Socket.SendText(Akcja+edtNick.Text);
      edtNick.Visible:=False;
    end;
  end;
end;

procedure TfrmMain.lblDelayClick(Sender: TObject);
begin
  memAFK.Lines.Add('*'+edtDelayMacro.Text+'*');
end;

procedure TfrmMain.imgChampionClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Champion');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Champion');
    ClientSocket.Socket.SendText('/useskill Song of Champion');
  end;
end;

procedure TfrmMain.imgRenewalClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Renewal');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Renewal');
    ClientSocket.Socket.SendText('/useskill Song of Renewal');
  end;
end;

procedure TfrmMain.imgMeditationClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Meditation');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Meditation');
    ClientSocket.Socket.SendText('/useskill Song of Meditation');
  end;
end;

procedure TfrmMain.imgEarthClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Earth');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Earth');
    ClientSocket.Socket.SendText('/useskill Song of Earth');
  end;
end;

procedure TfrmMain.imgHunterClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Hunter');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Hunter');
    ClientSocket.Socket.SendText('/useskill Song of Hunter');
  end;
end;

procedure TfrmMain.imgWardingClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Warding');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Warding');
    ClientSocket.Socket.SendText('/useskill Song of Warding');
  end;
end;

procedure TfrmMain.imgVitalityClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Vitality');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Vitality');
    ClientSocket.Socket.SendText('/useskill Song of Vitality');
  end;
end;

procedure TfrmMain.imgWindClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Wind');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Wind');
    ClientSocket.Socket.SendText('/useskill Song of Wind');
  end;
end;

procedure TfrmMain.imgInvocationClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Invocation');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Invocation');
    ClientSocket.Socket.SendText('/useskill Song of Invocation');
  end;
end;

procedure TfrmMain.imgStormClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Storm Guard');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Storm Guard');
    ClientSocket.Socket.SendText('/useskill Song of Storm Guard');
  end;
end;

procedure TfrmMain.imgFlameClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Song of Flame Guard');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Song of Flame Guard');
    ClientSocket.Socket.SendText('/useskill Song of Flame Guard');
  end;
end;

procedure TfrmMain.imgFireClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Fire');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Fire');
    ClientSocket.Socket.SendText('/useskill Dance of Fire');
  end;
end;

procedure TfrmMain.imgFuryClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Fury');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Fury');
    ClientSocket.Socket.SendText('/useskill Dance of Fury');
  end;
end;

procedure TfrmMain.imgWarriorClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Warrior');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Warrior');
    ClientSocket.Socket.SendText('/useskill Dance of Warrior');
  end;
end;

procedure TfrmMain.imgVampireClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Vampire');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Vampire');
    ClientSocket.Socket.SendText('/useskill Dance of Vampire');
  end;
end;

procedure TfrmMain.imgInspirationClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Inspiration');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Inspiration');
    ClientSocket.Socket.SendText('/useskill Dance of Inspiration');
  end;
end;

procedure TfrmMain.imgConcentrationClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Concentration');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Concentration');
    ClientSocket.Socket.SendText('/useskill Dance of Concentration');
  end;
end;

procedure TfrmMain.imgMysticClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Mystic');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Mystic');
    ClientSocket.Socket.SendText('/useskill Dance of Mystic');
  end;
end;

procedure TfrmMain.imgSirenClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Siren');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Siren');
    ClientSocket.Socket.SendText('/useskill Dance of Siren');
  end;
end;

procedure TfrmMain.imgShadowClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Shadow');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Shadow');
    ClientSocket.Socket.SendText('/useskill Dance of Shadow');
  end;
end;

procedure TfrmMain.imgMedusaClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Dance of Medusa');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Dance of Medusa');
    ClientSocket.Socket.SendText('/useskill Dance of Medusa');
  end;
end;

procedure TfrmMain.btnDelayClick(Sender: TObject);
begin
  memAFK.Lines.Add('*'+edtDelayMacro.Text+'*');
end;

procedure TfrmMain.imgCFlameClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Flame Chant');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Flame Chant');
    ClientSocket.Socket.SendText('/useskill Flame Chant');
  end;
end;

procedure TfrmMain.imgEvasionClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Evasion');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Evasion');
    ClientSocket.Socket.SendText('/useskill Chant of Evasion');
  end;
end;

procedure TfrmMain.imgEagleClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Eagle');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Eagle');
    ClientSocket.Socket.SendText('/useskill Chant of Eagle');
  end;
end;

procedure TfrmMain.imgBattleClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Battle');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Battle');
    ClientSocket.Socket.SendText('/useskill Chant of Battle');
  end;
end;

procedure TfrmMain.imgCFuryClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Fury');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Fury');
    ClientSocket.Socket.SendText('/useskill Chant of Fury');
  end;
end;

procedure TfrmMain.imgRageClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Rage');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Rage');
    ClientSocket.Socket.SendText('/useskill Chant of Rage');
  end;
end;

procedure TfrmMain.imgPredatorClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Predator');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Predator');
    ClientSocket.Socket.SendText('/useskill Chant of Predator');
  end;
end;

procedure TfrmMain.imgShieldingClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Shielding');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Shielding');
    ClientSocket.Socket.SendText('/useskill Chant of Shielding');
  end;
end;

procedure TfrmMain.imgCFireClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Fire');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Fire');
    ClientSocket.Socket.SendText('/useskill Chant of Fire');
  end;
end;

procedure TfrmMain.imgWarClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill War Chant');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill War Chant');
    ClientSocket.Socket.SendText('/useskill War Chant');
  end;
end;

procedure TfrmMain.imgCEarthClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Earth Chant');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Earth Chant');
    ClientSocket.Socket.SendText('/useskill Earth Chant');
  end;
end;

procedure TfrmMain.imgVictoryClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Victory');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Victory');
    ClientSocket.Socket.SendText('/useskill Chant of Victory');
  end;
end;

procedure TfrmMain.imgSpiritClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Spirit');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Spirit');
    ClientSocket.Socket.SendText('/useskill Chant of Spirit');
  end;
end;

procedure TfrmMain.imgCVampireClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Chant of Vampire');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Chant of Vampire');
    ClientSocket.Socket.SendText('/useskill Chant of Vampire');
  end;
end;

procedure TfrmMain.imgAcumenClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Acumen');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Acumen');
    ClientSocket.Socket.SendText('/useskill Acumen');
  end;
end;

procedure TfrmMain.imgGuidanceClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Guidance');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Guidance');
    ClientSocket.Socket.SendText('/useskill Guidance');
  end;
end;

procedure TfrmMain.imgMightClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Might');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Might');
    ClientSocket.Socket.SendText('/useskill Might');
  end;
end;

procedure TfrmMain.imgHasteClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Haste');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Haste');
    ClientSocket.Socket.SendText('/useskill Haste');
  end;
end;

procedure TfrmMain.imgFocusClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Focus');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Focus');
    ClientSocket.Socket.SendText('/useskill Focus');
  end;
end;

procedure TfrmMain.imgDeathWhisperClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Death Whisper');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Death Whisper');
    ClientSocket.Socket.SendText('/useskill Death Whisper');
  end;
end;

procedure TfrmMain.imgShieldClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Shield');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Shield');
    ClientSocket.Socket.SendText('/useskill Shield');
  end;
end;

procedure TfrmMain.imgMagicDefClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Magic Barrier');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Magic Barrier');
    ClientSocket.Socket.SendText('/useskill Magic Barrier');
  end;
end;

procedure TfrmMain.imgGMightClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Greater Might');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Greater Might');
    ClientSocket.Socket.SendText('/useskill Greater Might');
  end;
end;

procedure TfrmMain.imgGShieldClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Greater Shield');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Greater Shield');
    ClientSocket.Socket.SendText('/useskill Greater Shield');
  end;
end;

procedure TfrmMain.imgBTBClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Blessed Body');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Blessed Body');
    ClientSocket.Socket.SendText('/useskill Blessed Body');
  end;
end;

procedure TfrmMain.imgBTSClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Bless the Soul');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Blessed Soul');
    ClientSocket.Socket.SendText('/useskill Blessed Soul');
  end;
end;

procedure TfrmMain.imgZerkClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Berserker Spirit');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Berserker Spirit');
    ClientSocket.Socket.SendText('/useskill Berserker Spirit');
  end;
end;

procedure TfrmMain.imgMentalClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Mental Shield');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Mental Shield');
    ClientSocket.Socket.SendText('/useskill Mental Shield');
  end;
end;

procedure TfrmMain.imgPPConcentrationClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Concentration');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Concentration');
    ClientSocket.Socket.SendText('/useskill Concentration');
  end;
end;

procedure TfrmMain.imgBlessShieldClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Bless Shield');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Bless Shield');
    ClientSocket.Socket.SendText('/useskill Bless Shield');
  end;
end;

procedure TfrmMain.imgElementalProtectionClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Elemental Protection');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Elemental Protection');
    ClientSocket.Socket.SendText('/useskill Elemental Protection');
  end;
end;

procedure TfrmMain.imgHolyResClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Holy Resistance');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Holy Resistance');
    ClientSocket.Socket.SendText('/useskill Holy Resistance');
  end;
end;

procedure TfrmMain.imgUnholyResClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Unholy Resistance');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Unholy Resistance');
    ClientSocket.Socket.SendText('/useskill Unholy Resistance');
  end;
end;

procedure TfrmMain.imgPofClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Prophecy of Fire');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Prophecy of Fire');
    ClientSocket.Socket.SendText('/useskill Prophecy of Fire');
  end;
end;

procedure TfrmMain.tmrDelay2Timer(Sender: TObject);
begin
    tmrDelay2.Enabled:=False;
    DelayHP2:=False;
end;

procedure TfrmMain.tbHP2Change(Sender: TObject);
begin
lblSpamHP2.Caption:=inttostr(tbHP2.Position*5)+' %';
end;

procedure TfrmMain.tbCP2Change(Sender: TObject);
begin
lblSpamCP2.Caption:=inttostr(tbCP2.Position*5)+' %';
end;

procedure TfrmMain.tmrDelayCPTimer(Sender: TObject);
begin
    tmrDelayCP.Enabled:=False;
    DelayCP:=False;
end;

procedure TfrmMain.sbInterwalAFKChange(Sender: TObject);
begin
lblIntAFK.Caption:=inttostr((sbInterwalAFK.Position*100)div 1000)+','+inttostr(((sbInterwalAFK.Position*100)mod 1000)div 100)+' s';
tmrAFK.Interval:=sbInterwalAFK.Position*100;
end;

procedure TfrmMain.sbInterwalCPChange(Sender: TObject);
begin
lblIntCP.Caption:=inttostr((sbInterwalCP.Position*100)div 1000)+','+inttostr(((sbInterwalCP.Position*100)mod 1000)div 100)+' s';
tmrSpam.Interval:=sbInterwalCP.Position*100;
end;

procedure TfrmMain.btnMenuClick(Sender: TObject);
var Sciezka:array[0..MAX_PATH] of char;
begin
menZapiszWczytaj.Popup(frmMain.Left+btnMenu.Left,frmMain.Top+btnMenu.Left);
end;

procedure TfrmMain.Zapisz1Click(Sender: TObject);
var PlikMakro:TextFile;
begin
if SaveDialog1.Execute then
begin
memAFK.Lines.SaveToFile(SaveDialog1.FileName);
end;
end;

procedure TfrmMain.Wczyttaj1Click(Sender: TObject);
begin
if  OpenDialog1.Execute then
begin
memAFK.Lines.LoadFromFile(OpenDialog1.FileName);
end;
end;

procedure TfrmMain.tmrRemoteHPMPTimer(Sender: TObject);
begin
if (PageControl.ActivePageIndex=3) and (btnRemoteStartStop.Caption='Stop') then begin
  ClientSocket.Socket.SendText('*HPMPPLOX*');
end;
end;

procedure TfrmMain.imgEmpowerClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Empower');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Empower');
    ClientSocket.Socket.SendText('/useskill Empower');
  end;
end;

procedure TfrmMain.imgWMClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Wild Magic');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Wild Magic');
    ClientSocket.Socket.SendText('/useskill Wild Magic');
  end;
end;

procedure TfrmMain.imgSEFocusClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Focus');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Focus');
    ClientSocket.Socket.SendText('/useskill Focus');
  end;
end;

procedure TfrmMain.imgSEDWClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Death Whisper');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Death Whisper');
    ClientSocket.Socket.SendText('/useskill Death Whisper');
  end;
end;

procedure TfrmMain.imgSEVampiricClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Vampiric Rage');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Vampiric Rage');
    ClientSocket.Socket.SendText('/useskill Vampiric Rage');
  end;
end;

procedure TfrmMain.imgPOWindClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Prophecy of Wind');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Prophecy of Wind');
    ClientSocket.Socket.SendText('/useskill Prophecy of Wind');
  end;
end;

procedure TfrmMain.imgSERechargeClick(Sender: TObject);
begin
//AFK MODE
  if PageControl.ActivePageIndex=2 then begin
    memAFK.Lines.Add('/useskill Recharge');
  end;
//REMOTE MODE
  if PageControl.ActivePageIndex=3 then begin
    memLog.Lines.Add('Wykonaj: /useskill Recharge');
    ClientSocket.Socket.SendText('/useskill Recharge');
  end;
end;

procedure TfrmMain.btnSekUPClick(Sender: TObject);
var i:integer;
begin
i:=strtoint(edtSekundy.Text);
inc(i);
edtSekundy.Text:=inttostr(i);
end;

procedure TfrmMain.btnSekDownClick(Sender: TObject);
var i:integer;
begin
i:=strtoint(edtSekundy.Text);
dec(i);
edtSekundy.Text:=inttostr(i);
end;

procedure TfrmMain.sbWallHackDelayChange(Sender: TObject);
begin
lblWallHackDelay.Caption:=inttostr((sbWallHackDelay.Position*100)div 1000)+','+inttostr(((sbWallHackDelay.Position*100)mod 1000)div 100)+' s';
Opoznienie:=sbWallHackDelay.Position*100;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
if OpenDialog.Execute then edtSciezka.Text:=OpenDialog.FileName;
end;

procedure TfrmMain.btnWallHackRunClick(Sender: TObject);
var s:string;
begin
s:=copy(edtSciezka.Text,0,length(edtSciezka.Text)-6);
copyfile(s+'CLuser.ini',s+'user.ini');
copyfile(s+'CLcommandname-e.dat',s+'commandname-e.dat');
copyfile(s+'CLetcitemgrp.dat',s+'etcitemgrp.dat');
copyfile(s+'CLnpcgrp.dat',s+'npcgrp.dat');
copyfile(s+'CLskillgrp.dat',s+'skillgrp.dat');
copyfile(s+'CLskillname-e.dat',s+'skillname-e.dat');
copyfile(s+'CLnpcname-e.dat',s+'npcname-e.dat');
ShellExecute(Handle,'open',PAnsiChar(edtSciezka.Text),nil,nil,sw_normal);
sleep(Opoznienie);
copyfile(s+'WHuser.ini',s+'user.ini');
sleep(10000);
copyfile(s+'CLuser.ini',s+'user.ini');
copyfile(s+'CLcommandname-e.dat',s+'commandname-e.dat');
copyfile(s+'CLetcitemgrp.dat',s+'etcitemgrp.dat');
copyfile(s+'CLnpcgrp.dat',s+'npcgrp.dat');
copyfile(s+'CLskillgrp.dat',s+'skillgrp.dat');
copyfile(s+'CLskillname-e.dat',s+'skillname-e.dat');
copyfile(s+'CLnpcname-e.dat',s+'npcname-e.dat');
end;

procedure TfrmMain.Button3Click(Sender: TObject);
var s:string;
begin
s:=copy(edtSciezka.Text,0,length(edtSciezka.Text)-6);
copyfile(s+'CLuser.ini',s+'user.ini');
copyfile(s+'CLcommandname-e.dat',s+'commandname-e.dat');
copyfile(s+'CLetcitemgrp.dat',s+'etcitemgrp.dat');
copyfile(s+'CLnpcgrp.dat',s+'npcgrp.dat');
copyfile(s+'CLskillgrp.dat',s+'skillgrp.dat');
copyfile(s+'CLskillname-e.dat',s+'skillname-e.dat');
copyfile(s+'CLnpcname-e.dat',s+'npcname-e.dat');
ShellExecute(Handle,'open',PAnsiChar(edtSciezka.Text),nil,nil,sw_normal);
sleep(Opoznienie);
copyfile(s+'WHcommandname-e.dat',s+'commandname-e.dat');
copyfile(s+'WHetcitemgrp.dat',s+'etcitemgrp.dat');
copyfile(s+'WHnpcgrp.dat',s+'npcgrp.dat');
copyfile(s+'WHskillgrp.dat',s+'skillgrp.dat');
copyfile(s+'WHskillname-e.dat',s+'skillname-e.dat');
copyfile(s+'WHnpcname-e.dat',s+'npcname-e.dat');
sleep(10000);
copyfile(s+'CLuser.ini',s+'user.ini');
copyfile(s+'CLcommandname-e.dat',s+'commandname-e.dat');
copyfile(s+'CLetcitemgrp.dat',s+'etcitemgrp.dat');
copyfile(s+'CLnpcgrp.dat',s+'npcgrp.dat');
copyfile(s+'CLskillgrp.dat',s+'skillgrp.dat');
copyfile(s+'CLskillname-e.dat',s+'skillname-e.dat');
copyfile(s+'CLnpcname-e.dat',s+'npcname-e.dat');
end;

procedure TfrmMain.btnFullZestawClick(Sender: TObject);
var s:string;
begin
s:=copy(edtSciezka.Text,0,length(edtSciezka.Text)-6);
copyfile(s+'CLuser.ini',s+'user.ini');
copyfile(s+'CLcommandname-e.dat',s+'commandname-e.dat');
copyfile(s+'CLetcitemgrp.dat',s+'etcitemgrp.dat');
copyfile(s+'CLnpcgrp.dat',s+'npcgrp.dat');
copyfile(s+'CLskillgrp.dat',s+'skillgrp.dat');
copyfile(s+'CLskillname-e.dat',s+'skillname-e.dat');
copyfile(s+'CLnpcname-e.dat',s+'npcname-e.dat');
ShellExecute(Handle,'open',PAnsiChar(edtSciezka.Text),nil,nil,sw_normal);
sleep(Opoznienie);
copyfile(s+'WHuser.ini',s+'user.ini');
copyfile(s+'WHcommandname-e.dat',s+'commandname-e.dat');
copyfile(s+'WHetcitemgrp.dat',s+'etcitemgrp.dat');
copyfile(s+'WHnpcgrp.dat',s+'npcgrp.dat');
copyfile(s+'WHskillgrp.dat',s+'skillgrp.dat');
copyfile(s+'WHskillname-e.dat',s+'skillname-e.dat');
copyfile(s+'WHnpcname-e.dat',s+'npcname-e.dat');
sleep(10000);
copyfile(s+'CLuser.ini',s+'user.ini');
copyfile(s+'CLcommandname-e.dat',s+'commandname-e.dat');
copyfile(s+'CLetcitemgrp.dat',s+'etcitemgrp.dat');
copyfile(s+'CLnpcgrp.dat',s+'npcgrp.dat');
copyfile(s+'CLskillgrp.dat',s+'skillgrp.dat');
copyfile(s+'CLskillname-e.dat',s+'skillname-e.dat');
copyfile(s+'CLnpcname-e.dat',s+'npcname-e.dat');
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
var
  PlikINI: TextFile;
begin
  AssignFile(PlikINI,'Config.ini');
  ReWrite(PlikINI);
  Writeln(PlikINI,inttostr(tbCP2.Position));
  Writeln(PlikINI,cmbF5.Text);
  Writeln(PlikINI,edtDelayCP.Text);
  Writeln(PlikINI,inttostr(tbHP2.Position));
  Writeln(PlikINI,cmbF4.Text);
  Writeln(PlikINI,edtDelay2.Text);
  Writeln(PlikINI,inttostr(tbCP.Position));
  Writeln(PlikINI,cmbF1.Text);
  Writeln(PlikINI,cmbF2.Text);
  Writeln(PlikINI,inttostr(tbHP.Position));
  Writeln(PlikINI,cmbF3.Text);
  Writeln(PlikINI,edtMaxCP.Text);
  Writeln(PlikINI,edtIP.Text);
  Writeln(PlikINI,inttostr(sbTrans.Position));
  Writeln(PlikINI,colortostring(colOSD.Selected));
  Writeln(PlikINI,colortostring(colNormalHP.Selected));
  Writeln(PlikINI,colortostring(colLowHP.Selected));
  Writeln(PlikINI,edtDelay.Text);
  Writeln(PlikINI,edtSekundy.Text);
  Writeln(PlikINI,inttostr(frmSzklankaMode.Left));
  Writeln(PlikINI,inttostr(frmSzklankaMode.Top));
  Writeln(PlikINI,inttostr(frmMain.Left));
  Writeln(PlikINI,inttostr(frmMain.Top));
  Writeln(PlikINI,inttostr(sbInterwalAFK.Position));
  Writeln(PlikINI,inttostr(sbInterwalCP.Position));
  Writeln(PlikINI,inttostr(sbWallHackDelay.Position));
  Writeln(PlikINI,edtSciezka.Text);
  CloseFile(PlikINI);
end;

procedure TfrmMain.btnSearchClick(Sender: TObject);
var
    A,B,C,D,E,F,G,H:byte;
    HP1,HP2,CP1,CP2,MP1,MP2:char;
    i,Adres:integer;
    Znaleziono:boolean;
    ThreadID,ProcessID:integer;
    buf: array[0..7] of char;
begin

SpamUchwyt := FindWindow(nil,'Lineage II');
frmMain.Cheater.WindowHWND := SpamUchwyt;
 If SpamUchwyt = 0 then
 begin
  ShowMessage('Najpierw wlacz L2 i zaloguj sie na postac!');
 end;
 ThreadId := GetWindowThreadProcessId(SpamUchwyt,@ProcessId);
 HandleWindow := OpenProcess(PROCESS_ALL_ACCESS,False,ProcessId);



i:=0;
Znaleziono:=false;
AdresCP:=0;
AdresHP:=0;
AdresMP:=0;
MaxCP:=strtoint(edtMaxCP.Text);
MaxHP:=strtoint(edtMaxHP.Text);
MaxMP:=strtoint(edtMaxMP.Text);
CP2:= chr(MaxCP div 256);
CP1:= chr(MaxCP mod 256);
HP2:= chr(MaxHP div 256);
HP1:= chr(MaxHP mod 256);
MP2:= chr(MaxMP div 256);
MP1:= chr(MaxMP mod 256);
if (SpamUchwyt = 0) then begin
  tmrSpam.Enabled:=False;
  ShowMessage('Najpierw wlacz L2 i zaloguj sie na postac!');
  Exit;
end;
while Znaleziono=False do
//for i:=0 to 1024 do
  begin
    inc(i);
    Adres:=220003880+(i*256); //65536);
    ReadProcessMemory(HandleWindow,ptr(Adres),@buf,8,Zero);
    if (CP1 = buf[0]) and (AdresCP=0) then
      if CP2 = buf[1] then
        if (ord(buf[2])+ord(buf[3])+ord(buf[4])+ord(buf[5])+ord(buf[6])+ord(buf[7]))=0 then begin
          if (AdresHP<>0) and (AdresMP<>0) then Znaleziono:=true;
          AdresCP:=Adres+8;
        end;
    if (HP1 = buf[0]) and (AdresHP=0) then
      if HP2 = buf[1] then
        if (ord(buf[2])+ord(buf[3])+ord(buf[4])+ord(buf[5])+ord(buf[6])+ord(buf[7]))=0 then begin
          if (AdresCP<>0) and (AdresMP<>0) then Znaleziono:=true;
          AdresHP:=Adres+8;
        end;
    if (MP1 = buf[0]) and (AdresMP=0) then
      if MP2 = buf[1] then
        if (ord(buf[2])+ord(buf[3])+ord(buf[4])+ord(buf[5])+ord(buf[6])+ord(buf[7]))=0 then begin
          if (AdresHP<>0) and (AdresCP<>0) then Znaleziono:=true;
          AdresMP:=Adres+8;
        end;

  if Adres > 2147483647 then break;
  end;//while
//------------------//
if znaleziono then
  begin
    Cheater.Address:=AdresCP;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresCP+1;
    B:=ord(Cheater.ReadMem);
    MojeCP:=((B*256)+A);
    Cheater.Address:=AdresCP-8;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresCP-8+1;
    B:=ord(Cheater.ReadMem);
    MaxCP:=((B*256)+A);
    Cheater.Address:=AdresHP;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresHP+1;
    B:=ord(Cheater.ReadMem);
    MojeHP:=((B*256)+A);
    Cheater.Address:=AdresHP-8;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresHP-8+1;
    B:=ord(Cheater.ReadMem);
    MaxHP:=((B*256)+A);
    Cheater.Address:=AdresMP;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresMP+1;
    B:=ord(Cheater.ReadMem);
    MojeMP:=((B*256)+A);
    Cheater.Address:=AdresMP-8;
    A:=ord(Cheater.ReadMem);
    Cheater.Address:=AdresMP-8+1;
    B:=ord(Cheater.ReadMem);
    MaxMP:=((B*256)+A);
//------------------//
      tabSpam.TabVisible:=True;
      PageControl.ActivePageIndex:=0;
      tabWczytaj.TabVisible:=False;
      tmrSpam.Enabled:=True; //---//
//      ShowMessage('Wszystko OK, mozna juz Spamowac :)');
      Exit;
end else ShowMessage('Blad! Czy na pewno podales prawidlowa wartosc?');
end;

end.
