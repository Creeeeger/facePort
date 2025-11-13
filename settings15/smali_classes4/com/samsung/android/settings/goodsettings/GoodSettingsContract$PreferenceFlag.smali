.class public interface abstract annotation Lcom/samsung/android/settings/goodsettings/GoodSettingsContract$PreferenceFlag;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/goodsettings/GoodSettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PreferenceFlag"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FLAG_NEED_PREF_IS_AVAILABLE:J = 0x200000000L

.field public static final FLAG_NEED_PREF_IS_VISIBLE:J = 0x400000000L

.field public static final FLAG_NEED_TYPE:J = 0x100000000L
