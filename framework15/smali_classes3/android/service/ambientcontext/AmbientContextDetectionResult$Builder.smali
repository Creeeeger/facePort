.class public final Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
.super Ljava/lang/Object;
.source "AmbientContextDetectionResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ambientcontext/AmbientContextDetectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addEvent(Landroid/app/ambientcontext/AmbientContextEvent;)Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist addEvents(Ljava/util/List;)Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;)",
            "Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/service/ambientcontext/AmbientContextDetectionResult;
    .locals 4

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/ambientcontext/AmbientContextDetectionResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist clearEvents()Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p0
.end method
