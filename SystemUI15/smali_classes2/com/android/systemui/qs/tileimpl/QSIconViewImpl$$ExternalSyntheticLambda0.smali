.class public final synthetic Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/widget/ImageView;

.field public final synthetic f$3:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;JLandroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iput-wide p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$2:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-boolean p6, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-wide v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$4:Z

    iget-wide v5, v0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mScheduledIconChangeTransactionId:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3, v4, p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    :cond_0
    return-void
.end method
