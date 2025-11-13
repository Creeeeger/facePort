.class Lcom/samsung/android/settings/search/provider/TagChecker$1;
.super Ljava/lang/Object;
.source "TagChecker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/search/provider/TagChecker;->isGameInLatest5Apps()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/settings/search/provider/TagChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/provider/TagChecker;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/TagChecker$1;->this$0:Lcom/samsung/android/settings/search/provider/TagChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/TagChecker$1;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 2

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker$1;->mCollator:Ljava/text/Collator;

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 376
    check-cast p1, Landroid/app/usage/UsageStats;

    check-cast p2, Landroid/app/usage/UsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/search/provider/TagChecker$1;->compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result p0

    return p0
.end method
