.class public final Lcom/android/compose/theme/AndroidColorScheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/compose/theme/AndroidColorScheme$Companion;


# instance fields
.field public final deprecated:Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;

.field public final onPrimary:J

.field public final onPrimaryContainer:J

.field public final onSecondary:J

.field public final onSurface:J

.field public final onSurfaceVariant:J

.field public final outlineVariant:J

.field public final primary:J

.field public final primaryContainer:J

.field public final secondary:J

.field public final surfaceBright:J

.field public final tertiary:J

.field public final tertiaryFixed:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/theme/AndroidColorScheme$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/theme/AndroidColorScheme;->Companion:Lcom/android/compose/theme/AndroidColorScheme$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/compose/theme/AndroidColorScheme;->Companion:Lcom/android/compose/theme/AndroidColorScheme$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x11200b5

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200bc

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200ce

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200b1

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200b3

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200ba

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200cd

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200af

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->onPrimaryContainer:J

    const v0, 0x11200c7

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200ad

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200b4

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200b7

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200d5

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200bb

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200c2

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200c5

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200aa

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200b0

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200c3

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200c6

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200d0

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200d1

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200d3

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200d4

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->tertiaryFixed:J

    const v0, 0x11200c0

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->primaryContainer:J

    const v0, 0x11200ab

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200c1

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200b2

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->onSecondary:J

    const v0, 0x11200b9

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200cf

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200c9

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->surfaceBright:J

    const v0, 0x11200a9

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200ac

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200c8

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200cb

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200cc

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200b8

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200bd

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200be

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->outlineVariant:J

    const v0, 0x11200ae

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->onPrimary:J

    const v0, 0x11200b6

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->onSurface:J

    const v0, 0x11200ca

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    const v0, 0x11200bf

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    const v0, 0x11200c4

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->secondary:J

    const v0, 0x11200d2

    invoke-static {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    new-instance v0, Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;

    invoke-direct {v0, p1}, Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/compose/theme/AndroidColorScheme;->deprecated:Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;

    return-void
.end method
