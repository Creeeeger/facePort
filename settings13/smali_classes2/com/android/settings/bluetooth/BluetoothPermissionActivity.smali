.class public Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEventId:Ljava/lang/String;

.field private mMessageView:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRequestType:I

.field private mScreenId:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestType(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mdismissDialog(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    .line 94
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void
.end method

.method private createRemoteName()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 300
    sget v0, Lcom/android/settings/R$string;->unknown:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private dismissDialog()V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method

.method private dismissMirrorLinkBlackScreen(Z)V
    .locals 2

    const-string/jumbo v0, "net.mirrorlink.on"

    .line 272
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissMirrorLinkBlackScreen isDismissBlackScreen= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.mirrorlink.action.DISMISS_BLACK_SCREEN"

    .line 276
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "com.samsung.android.mirrorlink.action.SHOW_BLACK_SCREEN_NOIMAGE"

    .line 278
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.samsung.android.app.mirrorlink"

    .line 280
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/Window;)Z
    .locals 1

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 399
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    .line 400
    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    neg-int v0, p1

    if-lt p0, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 402
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    if-gt p0, v0, :cond_1

    .line 403
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p1

    if-le p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onCancel()V
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCancel : request Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendReplyIntentToReceiver(ZZ)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private onNegative()V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNegative : request Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 314
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendReplyIntentToReceiver(ZZ)V

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private onPositive()V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPositive :: request Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendReplyIntentToReceiver(ZZ)V

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private showDialog(Ljava/lang/String;I)V
    .locals 8

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDialog :: Request type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothPermissionActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_3

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    const/4 v6, 0x3

    if-eq p2, v6, :cond_1

    const/4 v7, 0x4

    if-eq p2, v7, :cond_0

    const-string p2, ""

    goto :goto_0

    .line 241
    :cond_0
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 242
    sget v7, Lcom/android/settings/R$string;->sec_bluetooth_sap_acceptance_dialog_text:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v0, v6, v4

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v5

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 243
    sget v0, Lcom/android/settings/R$string;->event_request_dialog_sap:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mEventId:Ljava/lang/String;

    goto :goto_0

    .line 237
    :cond_1
    sget p2, Lcom/android/settings/R$string;->sec_bluetooth_map_acceptance_dialog_text:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v0, v5, v4

    invoke-virtual {p0, p2, v5}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 238
    sget v0, Lcom/android/settings/R$string;->event_request_dialog_map:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mEventId:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_2
    sget p2, Lcom/android/settings/R$string;->sec_bluetooth_pb_acceptance_dialog_text:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v0, v5, v4

    invoke-virtual {p0, p2, v5}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 234
    sget v0, Lcom/android/settings/R$string;->event_request_dialog_pbap:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mEventId:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_3
    sget p2, Lcom/android/settings/R$string;->bluetooth_connection_dialog_text:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {p0, p2, v4}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/android/settings/R$layout;->bluetooth_access:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 248
    sget v3, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mMessageView:Landroid/widget/TextView;

    .line 249
    invoke-static {}, Lcom/android/settings/bluetooth/Utils;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200f"

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string/jumbo p2, "ro.build.scafe.size"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "tall"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 251
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$integer;->bluetooth_message_view_text_size_tablet_tall:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 255
    :cond_5
    iget-object p2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 256
    iput-object p1, p2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showDialog() Request type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    iput-object p1, p2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 260
    sget p1, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 261
    iput-object p0, p2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 262
    sget p1, Lcom/android/settings/R$string;->bluetooth_permission_dialog_button_deny:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 263
    iput-object p0, p2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "Back button pressed! onCancel"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onCancel()V

    .line 292
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onPositive()V

    .line 415
    sget p1, Lcom/android/settings/R$string;->detail_allow:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onNegative()V

    .line 422
    sget p1, Lcom/android/settings/R$string;->detail_deny:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 430
    :goto_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mEventId:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setFinishOnTouchOutside(Z)V

    const-string/jumbo v0, "power"

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "BluetoothPermissionActivity"

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    .line 145
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    .line 147
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo p1, "onCreate :: BluetoothAdapter not supported by system"

    .line 156
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 161
    :cond_1
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "onCreate :: stop scanning before launch pairingdialog"

    .line 163
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    :cond_2
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x2

    .line 169
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate() Request type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/4 v1, 0x3

    if-ne v0, p1, :cond_3

    .line 176
    sget v0, Lcom/android/settings/R$string;->bluetooth_connection_permission_request:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    .line 178
    sget v0, Lcom/android/settings/R$string;->bluetooth_phonebook_request:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 180
    sget v0, Lcom/android/settings/R$string;->bluetooth_map_request:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 182
    sget v0, Lcom/android/settings/R$string;->bluetooth_sap_request:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    .line 191
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    const-string/jumbo v0, "window"

    .line 193
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 200
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    .line 208
    sget p1, Lcom/android/settings/R$string;->screen_request_dialog:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mScreenId:Ljava/lang/String;

    .line 210
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 211
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    return-void

    .line 185
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: bad request type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 444
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 445
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 455
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissMirrorLinkBlackScreen(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 379
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 380
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 381
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x13a00000

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 391
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onCancel()V

    .line 393
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onResume()V
    .locals 0

    .line 437
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 439
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onCancel()V

    const/4 p0, 0x1

    return p0

    .line 373
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method sendReplyIntentToReceiver(ZZ)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 328
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReplyIntentToReceiver() Request type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReturnPackage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/4 v1, 0x3

    const/4 v10, 0x2

    if-ne v0, v10, :cond_0

    const-string v0, "PBAP"

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const-string v0, "MAP"

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const-string v0, "SAP"

    goto :goto_0

    .line 343
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    const/4 v11, 0x1

    if-nez v2, :cond_3

    const-string v2, "[unknown]"

    goto :goto_1

    :cond_3
    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v11

    const-string v2, "%s (%s)"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object v2, v1, v11

    if-eqz p1, :cond_4

    const-string v0, "granted"

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "rejected"

    :goto_2
    aput-object v0, v1, v10

    const-string v0, "User authorization of profile %s for device %s was %s"

    .line 346
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 348
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 349
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const-string v5, "BluetoothPermission"

    const-string v7, ""

    move-object v0, p0

    .line 348
    invoke-static/range {v0 .. v8}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_5

    move v10, v11

    :cond_5
    const-string v0, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 351
    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    .line 354
    invoke-virtual {v9, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 356
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 358
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 360
    invoke-virtual {p0, v9, v0}, Lcom/android/internal/app/AlertActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
