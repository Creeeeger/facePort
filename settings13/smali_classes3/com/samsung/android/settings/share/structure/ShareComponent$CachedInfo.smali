.class Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;
.super Ljava/lang/Object;
.source "ShareComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/share/structure/ShareComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedInfo"
.end annotation


# instance fields
.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mLabelPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/TargetPresentationGetter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/share/common/TargetPresentationGetter;)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;-><init>(Lcom/samsung/android/settings/share/common/TargetPresentationGetter;Landroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/share/common/TargetPresentationGetter;Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/share/common/TargetPresentationGetter;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/TargetPresentationGetter;

    .line 173
    iput-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mLabelPair:Landroid/util/Pair;

    return-void
.end method

.method private createLabelPair()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/TargetPresentationGetter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/TargetPresentationGetter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance p0, Landroid/util/Pair;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 204
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method getIconDrawable()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 189
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/TargetPresentationGetter;

    if-nez v0, :cond_1

    .line 192
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 194
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method getLabelPair()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mLabelPair:Landroid/util/Pair;

    if-eqz v0, :cond_0

    return-object v0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->createLabelPair()Landroid/util/Pair;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mLabelPair:Landroid/util/Pair;

    return-object v0
.end method
