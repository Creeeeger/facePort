.class public Landroid/app/PendingIntentStats;
.super Ljava/lang/Object;
.source "PendingIntentStats.java"


# instance fields
.field public final blacklist count:I

.field public final blacklist sizeKb:I

.field public final blacklist uid:I


# direct methods
.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/PendingIntentStats;->uid:I

    iput p2, p0, Landroid/app/PendingIntentStats;->count:I

    iput p3, p0, Landroid/app/PendingIntentStats;->sizeKb:I

    return-void
.end method
