.class public final synthetic Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
