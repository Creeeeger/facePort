.class public final Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/properties/BubbleProperties;


# static fields
.field public static final INSTANCE:Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;

.field public static _isBubbleBarEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;->INSTANCE:Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;

    sget-object v0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "persist.wm.debug.bubble_bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;->_isBubbleBarEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
