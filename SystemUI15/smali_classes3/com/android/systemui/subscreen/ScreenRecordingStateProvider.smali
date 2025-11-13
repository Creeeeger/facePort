.class public final Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# instance fields
.field public mTileState:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;->mTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-void
.end method
