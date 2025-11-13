.class public Lcom/android/settings/Utils$EmojiInputFilter;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiInputFilter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2382
    iput-object p1, p0, Lcom/android/settings/Utils$EmojiInputFilter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 2387
    iget-object p0, p0, Lcom/android/settings/Utils$EmojiInputFilter;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, p4, p5, p6}, Lcom/android/settings/Utils;->-$$Nest$smemojiParsing(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
