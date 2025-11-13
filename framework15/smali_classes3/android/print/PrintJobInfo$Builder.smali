.class public final Landroid/print/PrintJobInfo$Builder;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mPrototype:Landroid/print/PrintJobInfo;


# direct methods
.method public constructor whitelist <init>(Landroid/print/PrintJobInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/print/PrintJobInfo;
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-object v0
.end method

.method public whitelist putAdvancedOption(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->-$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmAdvancedOptions(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->-$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "key cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->-$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmAdvancedOptions(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->-$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setAttributes(Landroid/print/PrintAttributes;)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmAttributes(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)V

    return-void
.end method

.method public whitelist setCopies(I)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmCopies(Landroid/print/PrintJobInfo;I)V

    return-void
.end method

.method public whitelist setPages([Landroid/print/PageRange;)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmPageRanges(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)V

    return-void
.end method

.method public greylist-max-o setProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const-string/jumbo v1, "progress"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmProgress(Landroid/print/PrintJobInfo;F)V

    return-void
.end method

.method public greylist-max-o setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmStatus(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)V

    return-void
.end method
