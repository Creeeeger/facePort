.class public final Lcom/android/systemui/volume/view/VolumeRowView$animateSeekBarButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $progressDrawable:Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;

.field public final synthetic $start:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView$animateSeekBarButton$1;->$progressDrawable:Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;

    iput-boolean p2, p0, Lcom/android/systemui/volume/view/VolumeRowView$animateSeekBarButton$1;->$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView$animateSeekBarButton$1;->$progressDrawable:Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;

    iget-boolean p0, p0, Lcom/android/systemui/volume/view/VolumeRowView$animateSeekBarButton$1;->$start:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->animateButton(Z)V

    return-void
.end method
