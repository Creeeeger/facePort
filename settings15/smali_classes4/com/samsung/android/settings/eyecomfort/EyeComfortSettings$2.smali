.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

.field public final synthetic val$anchor:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->val$anchor:I

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->val$anchor:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetAnchorByView:Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    sget v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    invoke-virtual {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updatePreferenceStatus()V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
