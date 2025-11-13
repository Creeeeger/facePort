.class final Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;
.super Ljava/lang/Object;
.source "ContentProtectionEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentprotection/ContentProtectionEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchGroup"
.end annotation


# instance fields
.field public blacklist mFound:Z

.field private final blacklist mSearchStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mFound:Z

    iput-object p1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mSearchStrings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist matches(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mSearchStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
