.class public final synthetic Lcom/android/systemui/power/dialog/PdChargerAlertDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/power/dialog/PdChargerAlertDialog;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/dialog/PdChargerAlertDialog;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/dialog/PdChargerAlertDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/dialog/PdChargerAlertDialog;

    iput-object p2, p0, Lcom/android/systemui/power/dialog/PdChargerAlertDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/power/dialog/PdChargerAlertDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/dialog/PdChargerAlertDialog;

    iget-object p0, p0, Lcom/android/systemui/power/dialog/PdChargerAlertDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/power/dialog/PowerUiDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/power/dialog/PowerUiDialog;->mDoNotShowTag:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
