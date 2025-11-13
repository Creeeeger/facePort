.class public final Landroid/service/autofill/augmented/FillResponse$Builder;
.super Landroid/service/autofill/augmented/FillResponse$BaseBuilder;
.source "FillResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mClientState:Landroid/os/Bundle;

.field private blacklist mFillWindow:Landroid/service/autofill/augmented/FillWindow;

.field private blacklist mInlineSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

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
.method blacklist addInlineSuggestion(Landroid/service/autofill/Dataset;)Landroid/service/autofill/augmented/FillResponse$Builder;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/service/autofill/augmented/FillResponse$Builder;->setInlineSuggestions(Ljava/util/List;)Landroid/service/autofill/augmented/FillResponse$Builder;

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/service/autofill/augmented/FillResponse;
    .locals 6

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->-$$Nest$smdefaultFillWindow()Landroid/service/autofill/augmented/FillWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    :cond_0
    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->-$$Nest$smdefaultInlineSuggestions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    :cond_1
    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->-$$Nest$smdefaultClientState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    :cond_2
    new-instance v0, Landroid/service/autofill/augmented/FillResponse;

    iget-object v1, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    iget-object v3, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3}, Landroid/service/autofill/augmented/FillResponse;-><init>(Landroid/service/autofill/augmented/FillWindow;Ljava/util/List;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist setClientState(Landroid/os/Bundle;)Landroid/service/autofill/augmented/FillResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setFillWindow(Landroid/service/autofill/augmented/FillWindow;)Landroid/service/autofill/augmented/FillResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    return-object p0
.end method

.method public whitelist setInlineSuggestions(Ljava/util/List;)Landroid/service/autofill/augmented/FillResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;)",
            "Landroid/service/autofill/augmented/FillResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    return-object p0
.end method
