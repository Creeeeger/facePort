.class public final Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$ResponseCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$ResponseCallback;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$ResponseCallback;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;->mResponseView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
