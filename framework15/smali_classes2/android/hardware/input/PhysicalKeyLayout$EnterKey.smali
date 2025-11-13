.class public final Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
.super Ljava/lang/Record;
.source "PhysicalKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/PhysicalKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnterKey"
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
        "row",
        "column",
        "topKeyWeight",
        "bottomKeyWeight"
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
        F
    }
.end annotation


# instance fields
.field private final blacklist bottomKeyWeight:F

.field private final blacklist column:I

.field private final blacklist row:I

.field private final blacklist topKeyWeight:F


# direct methods
.method public constructor blacklist <init>(IIFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "row",
            "column",
            "topKeyWeight",
            "bottomKeyWeight"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I

    iput p2, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I

    iput p3, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F

    iput p4, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F

    return-void
.end method


# virtual methods
.method public blacklist bottomKeyWeight()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F

    return v0
.end method

.method public blacklist column()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-custom {p0, p1}, call_site_14("equals", (Landroid/hardware/input/PhysicalKeyLayout$EnterKey;Ljava/lang/Object;)Z, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;, "row;column;topKeyWeight;bottomKeyWeight", instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    invoke-custom {p0}, call_site_10("hashCode", (Landroid/hardware/input/PhysicalKeyLayout$EnterKey;)I, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;, "row;column;topKeyWeight;bottomKeyWeight", instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist row()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-custom {p0}, call_site_3("toString", (Landroid/hardware/input/PhysicalKeyLayout$EnterKey;)Ljava/lang/String;, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;, "row;column;topKeyWeight;bottomKeyWeight", instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F, instance-get@Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist topKeyWeight()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F

    return v0
.end method
