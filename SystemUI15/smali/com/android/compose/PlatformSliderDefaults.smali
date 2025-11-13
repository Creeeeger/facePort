.class public final Lcom/android/compose/PlatformSliderDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DefaultPlatformSliderDraggingCornerRadius:F

.field public static final INSTANCE:Lcom/android/compose/PlatformSliderDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/PlatformSliderDefaults;

    invoke-direct {v0}, Lcom/android/compose/PlatformSliderDefaults;-><init>()V

    sput-object v0, Lcom/android/compose/PlatformSliderDefaults;->INSTANCE:Lcom/android/compose/PlatformSliderDefaults;

    const/16 v0, 0x8

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/android/compose/PlatformSliderDefaults;->DefaultPlatformSliderDraggingCornerRadius:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultPlatformSliderColors(Landroidx/compose/runtime/Composer;)Lcom/android/compose/PlatformSliderColors;
    .locals 24

    move-object/from16 v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x1cb7691d

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/android/compose/PlatformSliderColors;

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v3, v2, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v5, v2, Landroidx/compose/material3/ColorScheme;->primary:J

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v7, v2, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v9, v2, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v11, v2, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v13, v2, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    move-wide v15, v13

    iget-wide v13, v2, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    move-wide/from16 v17, v13

    iget-wide v13, v2, Landroidx/compose/material3/ColorScheme;->outline:J

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    move-wide/from16 v19, v13

    iget-wide v13, v2, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    const/16 v21, 0x0

    move-object v2, v1

    move-wide/from16 v22, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v22

    invoke-direct/range {v2 .. v21}, Lcom/android/compose/PlatformSliderColors;-><init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method
