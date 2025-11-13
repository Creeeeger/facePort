.class public final Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
.super Ljava/lang/Record;
.source "PhysicalKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/PhysicalKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutKey"
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
        "keyCode",
        "scanCode",
        "keyWeight",
        "glyph"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        F,
        Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    }
.end annotation


# instance fields
.field private final blacklist glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

.field private final blacklist keyCode:I

.field private final blacklist keyWeight:F

.field private final blacklist scanCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetkeyCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscanCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    return p0
.end method

.method public constructor blacklist <init>(IIFLandroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "scanCode",
            "keyWeight",
            "glyph"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    iput p2, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    iput p3, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    iput-object p4, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-custom {p0, p1}, call_site_5("equals", (Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;Ljava/lang/Object;)Z, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;, "keyCode;scanCode;keyWeight;glyph", instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    invoke-custom {p0}, call_site_4("hashCode", (Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;, "keyCode;scanCode;keyWeight;glyph", instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist keyCode()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    return v0
.end method

.method public blacklist keyWeight()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    return v0
.end method

.method public blacklist scanCode()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-custom {p0}, call_site_2("toString", (Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Ljava/lang/String;, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;, "keyCode;scanCode;keyWeight;glyph", instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F, instance-get@Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
