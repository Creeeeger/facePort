.class public Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;
.super Ljava/lang/Object;
.source "FontPreviewBubbleListItem.java"


# instance fields
.field private mIsIncoming:Z

.field private mMessageText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageText()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mMessageText:Ljava/lang/String;

    return-object p0
.end method

.method public isIncoming()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mIsIncoming:Z

    return p0
.end method

.method public setIsIncoming(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mIsIncoming:Z

    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mMessageText:Ljava/lang/String;

    return-void
.end method
