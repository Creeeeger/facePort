.class final Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
.super Ljava/lang/Record;
.source "KeyboardLayoutPreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlyphDrawable"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "text",
        "rect",
        "gravity",
        "paint"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Landroid/graphics/RectF;,
        I,
        Landroid/graphics/Paint;
    }
.end annotation


# instance fields
.field private final blacklist gravity:I

.field private final blacklist paint:Landroid/graphics/Paint;

.field private final blacklist rect:Landroid/graphics/RectF;

.field private final blacklist text:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetgravity(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrect(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettext(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "rect",
            "gravity",
            "paint"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    iput p3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    iput-object p4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;-><init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-custom {p0, p1}, call_site_8("equals", (Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;Ljava/lang/Object;)Z, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;, "text;rect;gravity;paint", instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist gravity()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    invoke-custom {p0}, call_site_1("hashCode", (Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)I, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;, "text;rect;gravity;paint", instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist paint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public blacklist rect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-custom {p0}, call_site_9("toString", (Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Ljava/lang/String;, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;, "text;rect;gravity;paint", instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I, instance-get@Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
