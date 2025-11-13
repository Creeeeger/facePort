.class public final Lcom/android/systemui/basic/util/CoverUtilWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mActionBeforeSecureConfirm:Ljava/lang/Runnable;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverStateChangedListener:Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;

.field public final mCoverUtil:Lcom/android/systemui/util/CoverUtil;

.field public final mListeners:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/CoverUtil;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    new-instance v0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/basic/util/CoverUtilWrapper;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/CoverUtil;->addListener(Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V

    return-void
.end method
