.class public Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableBackgroundColorSpan"
.end annotation


# instance fields
.field private greylist-max-o mColor:I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public greylist-max-o getBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    return v0
.end method

.method public greylist-max-o setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    return-void
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
