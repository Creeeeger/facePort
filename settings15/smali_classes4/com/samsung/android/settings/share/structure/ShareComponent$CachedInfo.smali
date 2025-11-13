.class public final Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mLabelPair:Landroid/util/Pair;

.field public final mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    iput-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mLabelPair:Landroid/util/Pair;

    return-void
.end method
