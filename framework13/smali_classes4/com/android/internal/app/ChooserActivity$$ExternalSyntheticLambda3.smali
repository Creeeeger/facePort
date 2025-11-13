.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/app/ChooserActivity;

    return-void
.end method


# virtual methods
.method public final whitelist onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->lambda$initGalleryRecyclerView$9$com-android-internal-app-ChooserActivity()Z

    move-result v0

    return v0
.end method
