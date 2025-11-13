.class Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;
.super Ljava/lang/Object;
.source "EyeComfortSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showLocationOnDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

.field final synthetic val$anchor:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->val$anchor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 641
    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->val$anchor:I

    if-nez p1, :cond_0

    .line 642
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fputmSetAnchorByView(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Z)V

    .line 644
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$mupdatePreferenceStatus(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    .line 645
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fputmLocationOnDialog(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method
