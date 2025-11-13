.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;
.super Ljava/lang/Object;
.source "WifiApConfigureCancelSaveBottomView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApConfigureCancelSaveBottomView"


# instance fields
.field private cancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mSaveButton:Landroid/widget/Button;

.field private mWifiApEditSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

.field private saveButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mContext:Landroid/content/Context;

    .line 42
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mWifiApEditSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->saveButtonClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->cancelButtonClickListener:Landroid/view/View$OnClickListener;

    .line 46
    sget p2, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->sec_wifi_ap_cancel_save_button_bar:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mActivity:Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mCancelButton:Landroid/widget/Button;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mActivity:Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mSaveButton:Landroid/widget/Button;

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mSaveButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 55
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->saveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 57
    :cond_1
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->TAG:Ljava/lang/String;

    const-string p2, "WifiApConfigureCancelSaveBottomView() - cstr,mSaveButton is null"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->cancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 62
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->TAG:Ljava/lang/String;

    const-string p1, "WifiApConfigureCancelSaveBottomView() - cstr,mCancelButton is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public setEnabledSaveButton(Ljava/lang/Boolean;)V
    .locals 3

    .line 67
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling Save Button - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mSaveButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "setEnabledSaveButton() - ,mSaveButton is null"

    .line 71
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
