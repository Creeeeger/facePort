.class Lcom/samsung/android/settings/knox/KnoxSecuritySettings$2;
.super Ljava/lang/Object;
.source "KnoxSecuritySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->showRemoveBiometricsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$2;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$2;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    return-void
.end method

.method public unify()V
    .locals 1

    .line 321
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$2;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
