.class Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 340
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 342
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffFunctionsConflictWithOneHandedMode(Landroid/content/Context;)V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-$$Nest$msetOneHandOperation(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V

    .line 345
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-$$Nest$mreduceSizeBroadcast(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V

    :cond_0
    return-void
.end method
