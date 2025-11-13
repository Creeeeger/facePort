.class public final Lcom/android/systemui/power/dialog/HvChargerEnableDialog;
.super Lcom/android/systemui/power/dialog/PowerUiDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/dialog/PowerUiDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final checkCondition()Z
    .locals 6

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->IS_LDU_OR_UNPACK_BINARY:Z

    const-string v1, "PowerUI.Dialog.HvChargerEnable"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mDoNotShowTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    const-string p0, "Once AFC enable charging pop up was showed, so we doesn\'t show again"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/2addr v4, v3

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "DoNotShowAfcEnablePopup"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return v3

    :cond_3
    :goto_0
    const-string p0, "IS LDU or RDU binary, so don\'t show hv enable popup"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final getDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 7

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f1408f5

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02bb

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a07f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_CHN:Z

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f130da0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f130d9f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f130da2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f130da1

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v2, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-boolean v2, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v2, Lcom/android/systemui/power/dialog/HvChargerEnableDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/dialog/HvChargerEnableDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/dialog/HvChargerEnableDialog;)V

    iget-object p0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v5, 0x7f130da3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object v2, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    return-object p0
.end method

.method public final setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    const-string v0, "com.android.systemui.afc_disable_charing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string p1, "DoNotShowAfcEnablePopupCount"

    iput-object p1, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mDoNotShowTag:Ljava/lang/String;

    return-void
.end method
