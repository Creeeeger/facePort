.class Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$2;
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

    .line 182
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->-$$Nest$mdismissAllDialog(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)V

    return-void
.end method
