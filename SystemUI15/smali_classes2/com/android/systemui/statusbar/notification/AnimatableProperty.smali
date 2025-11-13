.class public abstract Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0ede

    const v3, 0x7f0a0edd

    const v4, 0x7f0a0edc

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v5, 0x7f0a0ee2

    const v6, 0x7f0a0ee1

    const v7, 0x7f0a0ee3

    invoke-direct {v1, v7, v5, v6, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0a16

    const v3, 0x7f0a0a18

    const v4, 0x7f0a0a17

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0a1a

    const v3, 0x7f0a0a1c

    const v4, 0x7f0a0a1b

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a00ca

    const v3, 0x7f0a00cc

    const v4, 0x7f0a00cb

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;

    const-string v1, "ViewAbsoluteX"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a001f

    const v3, 0x7f0a001e

    const v4, 0x7f0a0020

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;

    const-string v1, "ViewAbsoluteY"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0023

    const v3, 0x7f0a0022

    const v4, 0x7f0a0024

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;

    const-string v1, "ViewWidth"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0e2b

    const v3, 0x7f0a0e2a

    const v4, 0x7f0a0e2c

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;

    const-string v1, "ViewHeight"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0e1c

    const v3, 0x7f0a0e1b

    const v4, 0x7f0a0e1d

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnimationEndTag()I
.end method

.method public abstract getAnimationStartTag()I
.end method

.method public abstract getAnimatorTag()I
.end method

.method public abstract getProperty()Landroid/util/Property;
.end method
