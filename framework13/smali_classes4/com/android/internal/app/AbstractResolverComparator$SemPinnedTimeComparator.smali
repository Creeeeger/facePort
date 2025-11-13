.class Lcom/android/internal/app/AbstractResolverComparator$SemPinnedTimeComparator;
.super Ljava/lang/Object;
.source "AbstractResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemPinnedTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AbstractResolverComparator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AbstractResolverComparator;

    .line 337
    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$SemPinnedTimeComparator;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 4
    .param p1, "lrci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rrci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 341
    if-nez p1, :cond_0

    .line 342
    const/4 v0, -0x1

    return v0

    .line 343
    :cond_0
    if-nez p2, :cond_1

    .line 344
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->semGetPinnedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->semGetPinnedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 337
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator$SemPinnedTimeComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method
