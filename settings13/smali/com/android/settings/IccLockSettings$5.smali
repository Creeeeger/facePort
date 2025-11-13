.class Lcom/android/settings/IccLockSettings$5;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->showPinDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$5;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/settings/IccLockSettings$5;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p0}, Lcom/android/settings/IccLockSettings;->-$$Nest$fgetmPinDialog(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    return-void
.end method
