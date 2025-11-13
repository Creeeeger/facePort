.class Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$3;
.super Ljava/lang/Object;
.source "OneHandedModePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->makeOneHandOperationDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->access$000(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->access$100(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffFunctionsConflictWithOneHandedMode(Landroid/content/Context;)V

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->-$$Nest$msetOneHandOperation(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;I)V

    :cond_0
    return-void
.end method
