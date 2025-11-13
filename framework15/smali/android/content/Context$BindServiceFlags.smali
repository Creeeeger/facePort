.class public final Landroid/content/Context$BindServiceFlags;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BindServiceFlags"
.end annotation


# instance fields
.field private final blacklist mValue:J


# direct methods
.method private constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/content/Context$BindServiceFlags;->mValue:J

    return-void
.end method

.method public static whitelist of(J)Landroid/content/Context$BindServiceFlags;
    .locals 4

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Context$BindServiceFlags;

    invoke-direct {v0, p0, p1}, Landroid/content/Context$BindServiceFlags;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BIND_EXTERNAL_SERVICE is deprecated. Use BIND_EXTERNAL_SERVICE_LONG instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getValue()J
    .locals 2

    iget-wide v0, p0, Landroid/content/Context$BindServiceFlags;->mValue:J

    return-wide v0
.end method
