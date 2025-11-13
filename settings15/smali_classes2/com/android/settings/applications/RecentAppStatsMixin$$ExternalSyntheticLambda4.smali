.class public final synthetic Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda4;->f$0:I

    check-cast p1, Landroid/app/usage/UsageStats;

    new-instance v0, Lcom/android/settings/applications/RecentAppStatsMixin$UsageStatsWrapper;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/applications/RecentAppStatsMixin$UsageStatsWrapper;-><init>(Landroid/app/usage/UsageStats;I)V

    return-object v0
.end method
