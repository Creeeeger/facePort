.class public interface abstract Lcom/android/systemui/battery/unified/BatteryColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LIGHT_THEME_COLORS:Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/battery/unified/BatteryColors$Companion;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;->INSTANCE:Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;

    sput-object v0, Lcom/android/systemui/battery/unified/BatteryColors;->LIGHT_THEME_COLORS:Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;

    sget-object v0, Lcom/android/systemui/battery/unified/BatteryColors$DarkThemeColors;->INSTANCE:Lcom/android/systemui/battery/unified/BatteryColors$DarkThemeColors;

    return-void
.end method
