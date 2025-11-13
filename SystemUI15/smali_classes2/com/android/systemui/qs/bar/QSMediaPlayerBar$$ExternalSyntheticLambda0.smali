.class public final synthetic Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    return-void
.end method


# virtual methods
.method public final onMediaVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateBar()V

    return-void
.end method
