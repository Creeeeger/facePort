.class Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$2;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-$$Nest$mupdateSwitchAndPreferenceState(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    return-void
.end method
