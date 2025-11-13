.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

.field public static SPLIT_HANDLER_HELP_POPUP_ENABLED:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWindowingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mWindowingMode:I

    const/4 p0, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "multi_split_quick_options_help_count"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_2

    :cond_1
    const/4 p0, 0x5

    if-ne p2, p0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "freeform_handler_help_popup_count"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    :cond_3
    :goto_2
    return-void
.end method
