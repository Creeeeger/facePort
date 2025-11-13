.class Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;
.super Ljava/lang/Object;
.source "KeyboardLayoutPreviewDrawable.java"

# interfaces
.implements Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsoEnterKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mKeyPaint:Landroid/graphics/Paint;

.field private final blacklist mPath:Landroid/graphics/Path;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/Paint;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;->mKeyPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;-><init>(Landroid/graphics/Paint;Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;->mKeyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
