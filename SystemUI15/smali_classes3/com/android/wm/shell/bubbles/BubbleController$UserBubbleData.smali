.class public final Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mKeyToShownInShadeMap:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;-><init>()V

    return-void
.end method
