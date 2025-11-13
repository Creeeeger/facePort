.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;


# instance fields
.field public final expandable:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;->expandable:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final getExpandable()Lcom/android/systemui/animation/Expandable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;->expandable:Lcom/android/systemui/animation/Expandable;

    return-object p0
.end method
