.class public final Lcom/google/android/setupdesign/span/BoldLinkSpan;
.super Lcom/google/android/setupdesign/span/LinkSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final BOLD_TEXT_ADJUSTMENT:I = 0x12c


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/span/LinkSpan;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/span/BoldLinkSpan;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/setupdesign/span/LinkSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object p0, p0, Lcom/google/android/setupdesign/span/BoldLinkSpan;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const/16 v0, 0x12c

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
