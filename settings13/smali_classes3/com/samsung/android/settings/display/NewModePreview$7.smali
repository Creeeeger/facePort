.class Lcom/samsung/android/settings/display/NewModePreview$7;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview;->showBluelightfilterDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$7;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 924
    invoke-static {p0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$sfputmBlueScreenFilterDialogVisible(Z)V

    return-void
.end method
