.class public final Landroid/view/contentcapture/ViewNode$ViewStructureImpl;
.super Landroid/view/ViewStructure;
.source "ViewNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ViewNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewStructureImpl"
.end annotation


# instance fields
.field final blacklist mNode:Landroid/view/contentcapture/ViewNode;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;JI)V
    .locals 2

    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method private blacklist getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/contentcapture/ViewNode$ViewNodeText;

    invoke-direct {v1}, Landroid/view/contentcapture/ViewNode$ViewNodeText;-><init>()V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmText(Landroid/view/contentcapture/ViewNode;Landroid/view/contentcapture/ViewNode$ViewNodeText;)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addChildCount(I)I
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asyncCommit()V
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asyncCommit() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist asyncNewChild(I)Landroid/view/ViewStructure;
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asyncNewChild() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmAutofillId(Landroid/view/contentcapture/ViewNode;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildCount()I
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmExtras(Landroid/view/contentcapture/ViewNode;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNode()Landroid/view/contentcapture/ViewNode;
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    return-object v0
.end method

.method public blacklist getTempRect()Landroid/graphics/Rect;
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTempRect() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getTextSelectionEnd()I

    move-result v0

    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getTextSelectionStart()I

    move-result v0

    return v0
.end method

.method public whitelist hasExtras()Z
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist newChild(I)Landroid/view/ViewStructure;
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newChild() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newHtmlInfoBuilder() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setAccessibilityFocused(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x20001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/32 v3, 0x20000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setActivated(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x200001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/32 v3, 0x200000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setAlpha(F)V
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setAlpha() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setAssistBlocked(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x401

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x400

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setAutofillHints([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillHints(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setAutofillId(Landroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public whitelist setAutofillId(Landroid/view/autofill/AutofillId;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public whitelist setAutofillOptions([Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillOptions(Landroid/view/contentcapture/ViewNode;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setAutofillType(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillType(Landroid/view/contentcapture/ViewNode;I)V

    return-void
.end method

.method public whitelist setAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillValue(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method public whitelist setCheckable(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x40001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/32 v3, 0x40000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x80001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/32 v3, 0x80000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setChildCount(I)V
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setClassName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmClassName(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setClickable(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x1001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x1000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmContentDescription(Landroid/view/contentcapture/ViewNode;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setContextClickable(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x4001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x4000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setDataIsSensitive(Z)V
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setDataIsSensitive() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setDimens(IIIIII)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmX(Landroid/view/contentcapture/ViewNode;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmY(Landroid/view/contentcapture/ViewNode;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p3}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmScrollX(Landroid/view/contentcapture/ViewNode;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p4}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmScrollY(Landroid/view/contentcapture/ViewNode;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p5}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmWidth(Landroid/view/contentcapture/ViewNode;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p6}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmHeight(Landroid/view/contentcapture/ViewNode;I)V

    return-void
.end method

.method public whitelist setElevation(F)V
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setElevation() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x801

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x800

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setFocusable(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x8001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/32 v3, 0x8000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setFocused(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x10001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/32 v3, 0x10000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setHint(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    return-void
.end method

.method public whitelist setHintIdEntry(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmHintIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setHtmlInfo() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmId(Landroid/view/contentcapture/ViewNode;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdPackage(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p3}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdType(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p4}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setInputType(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmInputType(Landroid/view/contentcapture/ViewNode;I)V

    return-void
.end method

.method public whitelist setLocaleList(Landroid/os/LocaleList;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmLocaleList(Landroid/view/contentcapture/ViewNode;Landroid/os/LocaleList;)V

    return-void
.end method

.method public whitelist setLongClickable(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x2001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x2000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setMaxTextEms(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMaxEms(Landroid/view/contentcapture/ViewNode;I)V

    return-void
.end method

.method public whitelist setMaxTextLength(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMaxLength(Landroid/view/contentcapture/ViewNode;I)V

    return-void
.end method

.method public whitelist setMinTextEms(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMinEms(Landroid/view/contentcapture/ViewNode;I)V

    return-void
.end method

.method public whitelist setOpaque(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x400001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/32 v3, 0x400000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setReceiveContentMimeTypes([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmReceiveContentMimeTypes(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setSelected(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x100001

    and-long/2addr v1, v3

    if-eqz p1, :cond_0

    const-wide/32 v3, 0x100000

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    iput v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;II)V
    .locals 2

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    iput p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    iput p3, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    return-void
.end method

.method public whitelist setTextIdEntry(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmTextIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setTextLines([I[I)V
    .locals 1

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    iput-object p1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    iput-object p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    return-void
.end method

.method public whitelist setTextStyle(FIII)V
    .locals 1

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    iput p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    iput p3, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    iput p1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    iput p4, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    return-void
.end method

.method public whitelist setTransformation(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTransformation() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0xd

    and-long/2addr v1, v3

    int-to-long v3, p1

    const-wide/16 v5, 0xc

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    return-void
.end method

.method public whitelist setWebDomain(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setWebDomain() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
