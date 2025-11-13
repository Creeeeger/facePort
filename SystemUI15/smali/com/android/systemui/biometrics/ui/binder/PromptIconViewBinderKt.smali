.class public abstract Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final assetIdToString:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const v0, 0x7f12001e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "fingerprint_dialogue_error_to_fingerprint_lottie"

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f12001f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    const-string v3, "fingerprint_dialogue_error_to_success_lottie"

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120021

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    const-string v4, "fingerprint_dialogue_fingerprint_to_error_lottie"

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120022

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lkotlin/Pair;

    const-string v5, "fingerprint_dialogue_fingerprint_to_success_lottie"

    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120006

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lkotlin/Pair;

    const-string v6, "biometricprompt_fingerprint_to_error_landscape"

    invoke-direct {v5, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120007

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, Lkotlin/Pair;

    const-string v7, "biometricprompt_folded_base_bottomright"

    invoke-direct {v6, v0, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120008

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v7, Lkotlin/Pair;

    const-string v8, "biometricprompt_folded_base_default"

    invoke-direct {v7, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120009

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v8, Lkotlin/Pair;

    const-string v9, "biometricprompt_folded_base_topleft"

    invoke-direct {v8, v0, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f12000a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v9, Lkotlin/Pair;

    const-string v10, "biometricprompt_landscape_base"

    invoke-direct {v9, v0, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f12000b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Lkotlin/Pair;

    const-string v11, "biometricprompt_portrait_base_bottomright"

    invoke-direct {v10, v0, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f12000c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v11, Lkotlin/Pair;

    const-string v12, "biometricprompt_portrait_base_topleft"

    invoke-direct {v11, v0, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120010

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v12, Lkotlin/Pair;

    const-string v13, "biometricprompt_symbol_error_to_fingerprint_landscape"

    invoke-direct {v12, v0, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120011

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v13, Lkotlin/Pair;

    const-string v14, "biometricprompt_symbol_error_to_fingerprint_portrait_bottomright"

    invoke-direct {v13, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120012

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    const-string v15, "biometricprompt_symbol_error_to_fingerprint_portrait_topleft"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120013

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v16, v14

    const-string v14, "biometricprompt_symbol_error_to_success_landscape"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120014

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v17, v15

    const-string v15, "biometricprompt_symbol_error_to_success_portrait_bottomright"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120015

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v18, v14

    const-string v14, "biometricprompt_symbol_error_to_success_portrait_topleft"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120016

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v19, v15

    const-string v15, "biometricprompt_symbol_fingerprint_to_error_portrait_bottomright"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120017

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v20, v14

    const-string v14, "biometricprompt_symbol_fingerprint_to_error_portrait_topleft"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120018

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v21, v15

    const-string v15, "biometricprompt_symbol_fingerprint_to_success_landscape"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120019

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v22, v14

    const-string v14, "biometricprompt_symbol_fingerprint_to_success_portrait_bottomright"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f12001a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v23, v15

    const-string v15, "biometricprompt_symbol_fingerprint_to_success_portrait_topleft"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f08079f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v24, v14

    const-string v14, "face_dialog_wink_from_dark"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f080799

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v25, v15

    const-string v15, "face_dialog_dark_to_checkmark"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f08079a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v26, v14

    const-string v14, "face_dialog_dark_to_error"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f08079b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v27, v15

    const-string v15, "face_dialog_error_to_idle"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f08079c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v28, v14

    const-string v14, "face_dialog_idle_static"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f12001d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v29, v15

    const-string v15, "face_dialog_authenticating"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120024

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v30, v14

    const-string v14, "fingerprint_dialogue_unlocked_to_checkmark_success_lottie"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120020

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v31, v15

    const-string v15, "fingerprint_dialogue_error_to_unlock_lottie"

    invoke-direct {v14, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120023

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v32, v14

    const-string v14, "fingerprint_dialogue_fingerprint_to_unlock_lottie"

    invoke-direct {v15, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v14, v16

    move-object/from16 v32, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v32

    filled-new-array/range {v1 .. v31}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;->assetIdToString:Ljava/util/Map;

    return-void
.end method

.method public static final access$getAssetNameFromId(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;->assetIdToString:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Asset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
