.class public final synthetic Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dream/DreamSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dream/DreamSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dream/DreamSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dream/DreamSettings;

    iget-object v0, p0, Lcom/android/settings/dream/DreamSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/dream/DreamSettings;->mPreviewButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
