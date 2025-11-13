.class public final Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;
.super Ljava/lang/Object;
.source "ConversationAvatarData.java"

# interfaces
.implements Lcom/android/internal/widget/ConversationAvatarData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ConversationAvatarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupConversationAvatarData"
.end annotation


# instance fields
.field final blacklist mLastIcon:Landroid/graphics/drawable/Drawable;

.field final blacklist mSecondLastIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mLastIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mSecondLastIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
