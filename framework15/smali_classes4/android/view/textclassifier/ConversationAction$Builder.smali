.class public final Landroid/view/textclassifier/ConversationAction$Builder;
.super Ljava/lang/Object;
.source "ConversationAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:Landroid/app/RemoteAction;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mScore:F

.field private blacklist mTextReply:Ljava/lang/CharSequence;

.field private blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/ConversationAction;
    .locals 8

    new-instance v7, Landroid/view/textclassifier/ConversationAction;

    iget-object v1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mType:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mAction:Landroid/app/RemoteAction;

    iget-object v3, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mTextReply:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mScore:F

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mExtras:Landroid/os/Bundle;

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/ConversationAction;-><init>(Ljava/lang/String;Landroid/app/RemoteAction;Ljava/lang/CharSequence;FLandroid/os/Bundle;Landroid/view/textclassifier/ConversationAction-IA;)V

    return-object v7
.end method

.method public whitelist setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mAction:Landroid/app/RemoteAction;

    return-object p0
.end method

.method public whitelist setConfidenceScore(F)Landroid/view/textclassifier/ConversationAction$Builder;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mScore:F

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setTextReply(Ljava/lang/CharSequence;)Landroid/view/textclassifier/ConversationAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mTextReply:Ljava/lang/CharSequence;

    return-object p0
.end method
