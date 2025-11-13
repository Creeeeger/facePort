.class public final Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
.super Landroid/view/textclassifier/TextClassifierEvent$Builder;
.source "TextClassifierEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/textclassifier/TextClassifierEvent$Builder<",
        "Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mRelativeSuggestedWordEndIndex:I

.field blacklist mRelativeSuggestedWordStartIndex:I

.field blacklist mRelativeWordEndIndex:I

.field blacklist mRelativeWordStartIndex:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;-><init>(IILandroid/view/textclassifier/TextClassifierEvent$Builder-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
    .locals 2

    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent-IA;)V

    return-object v0
.end method

.method bridge synthetic blacklist self()Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist self()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setRelativeSuggestedWordEndIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordEndIndex:I

    return-object p0
.end method

.method public whitelist setRelativeSuggestedWordStartIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordStartIndex:I

    return-object p0
.end method

.method public whitelist setRelativeWordEndIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordEndIndex:I

    return-object p0
.end method

.method public whitelist setRelativeWordStartIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordStartIndex:I

    return-object p0
.end method
