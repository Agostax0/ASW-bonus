<script setup>
import CompositionApi_ChatGpt_01Scortese from "./components/composition-api/chat-gpt/01-scortese/Form.vue"
import CompositionApi_ChatGpt_02Neutro from "./components/composition-api/chat-gpt/02-neutro/Form.vue"
import CompositionApi_ChatGpt_03Cortese from "./components/composition-api/chat-gpt/03-cortese/Form.vue"
import CompositionApi_Claude_01Scortese from "./components/composition-api/claude/01-scortese/Form.vue"
import CompositionApi_Claude_02Neutro from "./components/composition-api/claude/02-neutro/Form.vue"
import CompositionApi_Claude_03Cortese from "./components/composition-api/claude/03-cortese/Form.vue"
import CompositionApi_Gemini_01Scortese from "./components/composition-api/gemini/01-scortese/Form.vue"
import CompositionApi_Gemini_02Neutro from "./components/composition-api/gemini/02-neutro/Form.vue"

import CompositionApi_Gemini_03Cortese from "./components/composition-api/gemini/03-cortese/Form.vue"
import OptionsApi_ChatGpt_01Scortese from "./components/options-api/chat-gpt/01-scortese/Form.vue"
import OptionsApi_ChatGpt_02Neutro from "./components/options-api/chat-gpt/02-neutro/Form.vue"
import OptionsApi_ChatGpt_03Cortese from "./components/options-api/chat-gpt/03-cortese/Form.vue"
import OptionsApi_Claude_01Scortese from "./components/options-api/claude/01-scortese/Form.vue"
import OptionsApi_Claude_02Neutro from "./components/options-api/claude/02-neutro/Form.vue"
import OptionsApi_Claude_03Cortese from "./components/options-api/claude/03-cortese/Form.vue"
import OptionsApi_Gemini_01Scortese from "./components/options-api/gemini/01-scortese/Form.vue"
import OptionsApi_Gemini_02Neutro from "./components/options-api/gemini/02-neutro/Form.vue"
import OptionsApi_Gemini_03Cortese from "./components/options-api/gemini/03-cortese/Form.vue"

import { computed } from 'vue'

/************ CONFIGURATION ************/
const apiType = "composition-api" // options-api | composition-api
const modelType = "chat-gpt"      // chat-gpt | claude | gemini
const promptType = "01-scortese"  // 01-scortese | 02-neutro | 03-cortese
/************ CONFIGURATION ************/

const concat = apiType + "_" + modelType + "_" + promptType

const selectedComponent = computed(() => {
  switch (concat) {
    case 'composition-api_chat-gpt_01-scortese':
      return CompositionApi_ChatGpt_01Scortese
    case 'composition-api_chat-gpt_02-neutro':
      return CompositionApi_ChatGpt_02Neutro
    case 'composition-api_chat-gpt_03-cortese':
      return CompositionApi_ChatGpt_03Cortese
    case 'composition-api_claude_01-scortese':
      return CompositionApi_Claude_01Scortese
    case 'composition-api_claude_02-neutro':
      return CompositionApi_Claude_02Neutro
    case 'composition-api_claude_03-cortese':
      return CompositionApi_Claude_03Cortese
    case 'composition-api_gemini_01-scortese':
      return CompositionApi_Gemini_01Scortese
    case 'composition-api_gemini_02-neutro':
      return CompositionApi_Gemini_02Neutro
    case 'composition-api_gemini_03-cortese':
      return CompositionApi_Gemini_03Cortese
    case 'options-api_chat-gpt_01-scortese':
      return OptionsApi_ChatGpt_01Scortese
    case 'options-api_chat-gpt_02-neutro':
      return OptionsApi_ChatGpt_02Neutro
    case 'options-api_chat-gpt_03-cortese':
      return OptionsApi_ChatGpt_03Cortese
    case 'options-api_claude_01-scortese':
      return OptionsApi_Claude_01Scortese
    case 'options-api_claude_02-neutro':
      return OptionsApi_Claude_02Neutro
    case 'options-api_claude_03-cortese':
      return OptionsApi_Claude_03Cortese
    case 'options-api_gemini_01-scortese':
      return OptionsApi_Gemini_01Scortese
    case 'options-api_gemini_02-neutro':
      return OptionsApi_Gemini_02Neutro
    case 'options-api_gemini_03-cortese':
      return OptionsApi_Gemini_03Cortese
    default:
      return null
  }
})
</script>

<template>
  <component v-if="selectedComponent" :is="selectedComponent" />
</template>
