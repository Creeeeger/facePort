.class public final Lcom/samsung/android/settings/display/CameraCutoutFragment$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$1;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$1;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    return-void
.end method
