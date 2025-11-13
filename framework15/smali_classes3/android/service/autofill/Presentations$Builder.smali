.class public final Landroid/service/autofill/Presentations$Builder;
.super Ljava/lang/Object;
.source "Presentations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Presentations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mMenuPresentation:Landroid/widget/RemoteViews;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

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
.method public whitelist build()Landroid/service/autofill/Presentations;
    .locals 6

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    :cond_0
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    :cond_1
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    :cond_2
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    :cond_3
    new-instance v0, Landroid/service/autofill/Presentations;

    iget-object v1, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v3, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/service/autofill/Presentations;-><init>(Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)V

    return-object v0
.end method

.method public whitelist setDialogPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public whitelist setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method public whitelist setInlineTooltipPresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method public whitelist setMenuPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method
