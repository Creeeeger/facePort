.class public final enum Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_DISMISSED_OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_DISMISS_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_EDIT_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_SHARE_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_TAP_OUTSIDE:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_TIMED_OUT:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_TOAST_SHOWN:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v1, 0x3b5

    const-string v2, "CLIPBOARD_OVERLAY_ENTERED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v2, 0x3b6

    const-string v3, "CLIPBOARD_OVERLAY_UPDATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v3, 0x3b7

    const-string v4, "CLIPBOARD_OVERLAY_EDIT_TAPPED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v4, 0x42b

    const-string v5, "CLIPBOARD_OVERLAY_SHARE_TAPPED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v5, 0x4ec

    const-string v6, "CLIPBOARD_OVERLAY_ACTION_SHOWN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v6, 0x3b8

    const-string v7, "CLIPBOARD_OVERLAY_ACTION_TAPPED"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v7, 0x3b9

    const-string v8, "CLIPBOARD_OVERLAY_REMOTE_COPY_TAPPED"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v8, 0x3ba

    const-string v9, "CLIPBOARD_OVERLAY_TIMED_OUT"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_TIMED_OUT:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v9, 0x3bb

    const-string v10, "CLIPBOARD_OVERLAY_DISMISS_TAPPED"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISS_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v9, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v10, 0x3bc

    const-string v11, "CLIPBOARD_OVERLAY_SWIPE_DISMISSED"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v10, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v11, 0x435

    const-string v12, "CLIPBOARD_OVERLAY_TAP_OUTSIDE"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_TAP_OUTSIDE:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v12, 0x436

    const-string v13, "CLIPBOARD_OVERLAY_DISMISSED_OTHER"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISSED_OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v12, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v13, 0x54c

    const-string v14, "CLIPBOARD_OVERLAY_SHOWN_EXPANDED"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v14, 0x54d

    const-string v15, "CLIPBOARD_OVERLAY_SHOWN_MINIMIZED"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v12, 0x54e

    const-string v15, "CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v15, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v12, 0x4f6

    const-string v13, "CLIPBOARD_TOAST_SHOWN"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_TOAST_SHOWN:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->$VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->$VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->mId:I

    return p0
.end method
